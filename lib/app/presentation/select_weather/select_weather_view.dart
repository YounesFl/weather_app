import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/app/common/dimension.dart';
import 'package:weather_app/app/design_system/circular_indicator.dart';
import 'package:weather_app/app/design_system/display_weather_information.dart';
import 'package:weather_app/app/domain/entities/weather.dart';
import 'package:weather_app/app/domain/usecases/get_place_position.dart';
import 'package:weather_app/app/domain/usecases/get_places.dart';
import 'package:weather_app/app/domain/usecases/get_weather.dart';
import 'package:weather_app/app/injection_container.dart';
import 'package:weather_app/app/presentation/select_weather/cubit/select_weather_cubit.dart';
import 'package:weather_app/app/presentation/select_weather/cubit/select_weather_state.dart';
import 'package:weather_app/app/utils/convert.dart';
import 'package:weather_app/app/utils/snackbar_util.dart';

class SelectWeatherView extends StatefulWidget implements AutoRouteWrapper {
  const SelectWeatherView({super.key});

  @override
  SelectWeatherViewState createState() => SelectWeatherViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectWeatherCubit(
        getWeather: sl<GetWeather>(),
        getPlaces: sl<GetPlaces>(),
        getPlacePosition: sl<GetPlacePosition>(),
      ),
      child: this,
    );
  }
}

class SelectWeatherViewState extends State<SelectWeatherView> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool isUserScroll = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        isUserScroll = _scrollController.offset > 0;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SelectWeatherCubit, SelectWeatherState>(
        listener: (context, state) {
          state.getWeatherState.maybeWhen(
            pending: () => const CircularIndicator(),
            error: (failure) =>
                SnackBarUtil.showFailureSnackBar(context, failure.title),
            orElse: (() => const SizedBox.shrink()),
          );
        },
        builder: (context, state) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(Dimension.standardPadding),
                    child: Center(
                      child: Text('Météo pour des prochains jours',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(Dimension.mediumPadding),
                    child: TextField(
                      controller: _searchController,
                      decoration: const InputDecoration(
                        hintText: 'Rechercher...',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) =>
                          context.read<SelectWeatherCubit>().getPlaces(value),
                    ),
                  ),
                  if (state.places != null) ...[
                    const SizedBox(height: Dimension.standardSpacing),
                    ...state.places!.map(
                      (place) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Dimension.mediumPadding),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(place.description ?? ''),
                          onTap: () async {
                            context
                                .read<SelectWeatherCubit>()
                                .refreshPlaceId(place.placeId!);
                            context
                                .read<SelectWeatherCubit>()
                                .getPlacePosition();
                            _searchController.text = place.description!;
                          },
                        ),
                      ),
                    )
                  ] else
                    const SizedBox.shrink(),
                  const SizedBox(height: Dimension.standardSpacing),
                  state.getWeatherState.maybeWhen(
                    pending: () => const CircularIndicator(),
                    orElse: (() => const SizedBox.shrink()),
                    complete: (weathers) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: isUserScroll ? 0 : Dimension.mediumPadding),
                        child: SingleChildScrollView(
                          controller: _scrollController,
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...weathers.map(
                                (weather) => _SelectDays(
                                  weathers: weathers,
                                  weather: weather,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: Dimension.standardSpacing),
                  if (state.weatherToDisplay != null) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Dimension.mediumPadding,
                          vertical: Dimension.standardPadding),
                      child: Card(
                        elevation: 3,
                        child: Padding(
                          padding:
                              const EdgeInsets.all(Dimension.mediumPadding),
                          child: Column(
                            children: [
                              Image.network(
                                "http://openweathermap.org/img/wn/${state.weatherToDisplay?.icon}@2x.png",
                                errorBuilder: (context, error, stackTrace) {
                                  return const SizedBox.shrink();
                                },
                              ),
                              DisplayWeatherInformation(
                                  data:
                                      "Date : ${Convert.convertUnixTimeToDay(state.weatherToDisplay!.date)}"),
                              DisplayWeatherInformation(
                                  data:
                                      "T° : ${Convert.kelvinToCelsius(state.weatherToDisplay!.temperature)}°C"),
                              DisplayWeatherInformation(
                                  data:
                                      "Description : ${state.weatherToDisplay?.description}"),
                              DisplayWeatherInformation(
                                  data:
                                      "Vitesse du vent : ${state.weatherToDisplay!.windSpeed}"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: Dimension.standardSpacing),
                  ]
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _SelectDays extends StatelessWidget {
  const _SelectDays({
    required this.weather,
    required this.weathers,
  });

  final Weather weather;
  final List<Weather> weathers;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectWeatherCubit, SelectWeatherState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExcludeSemantics(
              child: InkWell(
                onTap: () => context
                    .read<SelectWeatherCubit>()
                    .refreshSelectedDay(weathers.indexOf(weather), weather),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: state.selectedDay == weathers.indexOf(weather)
                        ? Theme.of(context).colorScheme.primary.withOpacity(0.2)
                        : Theme.of(context).colorScheme.secondary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(Dimension.mediumPadding),
                    child: Text(
                      Convert.convertUnixTimeToDay(weather.date),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight:
                                state.selectedDay == weathers.indexOf(weather)
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: Dimension.halfSpacing),
          ],
        );
      },
    );
  }
}
