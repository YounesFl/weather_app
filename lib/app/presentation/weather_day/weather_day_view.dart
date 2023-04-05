import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/app/common/dimension.dart';
import 'package:weather_app/app/design_system/circular_indicator.dart';
import 'package:weather_app/app/design_system/display_weather_information.dart';
import 'package:weather_app/app/domain/entities/weather.dart';
import 'package:weather_app/app/domain/usecases/get_current_weather_day.dart';
import 'package:weather_app/app/injection_container.dart';
import 'package:weather_app/app/presentation/weather_day/cubit/weather_day_cubit.dart';
import 'package:weather_app/app/presentation/weather_day/cubit/weather_day_state.dart';
import 'package:weather_app/app/utils/convert.dart';
import 'package:weather_app/app/utils/snackbar_util.dart';

class WeatherDayView extends StatefulWidget implements AutoRouteWrapper {
  const WeatherDayView({Key? key}) : super(key: key);

  @override
  State<WeatherDayView> createState() => _WeatherDayViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          WeatherDayCubit(getWeatherCurrentDay: sl<GetWeatherCurrentDay>()),
      child: this,
    );
  }
}

class _WeatherDayViewState extends State<WeatherDayView> {
  late WeatherDayCubit weatherCubit;

  @override
  void initState() {
    weatherCubit = context.read<WeatherDayCubit>();
    context.read<WeatherDayCubit>();
    weatherCubit.onGetCurrentWeatherDayPressed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocConsumer<WeatherDayCubit, WeatherDayState>(
            listener: (context, state) {
              state.getCurrentWeatherDayState.maybeWhen(
                  error: (failure) =>
                      SnackBarUtil.showFailureSnackBar(context, failure.title),
                  orElse: (() => const SizedBox.shrink()));
            },
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(Dimension.mediumPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text('Météo du jour selon votre localisation',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary)),
                    ),
                    const SizedBox(height: Dimension.mediumSpacing),
                    state.getCurrentWeatherDayState.maybeWhen(
                      complete: (data) => _buildDataList(data, context),
                      pending: () => const Center(child: CircularIndicator()),
                      orElse: (() => const SizedBox.shrink()),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildDataList(List<Weather> data, BuildContext context) {
    final list = data.getRange(0, 24).toList();
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              'Du ${Convert.convertUnixTimeToDay((list[0].date))} au ${Convert.convertUnixTimeToDay((list[23].date))}'),
          ...list.map(
            (weather) {
              final date = Convert.convertUnixTimeToHour(weather.date);
              return Column(
                children: [
                  Image.network(
                    "http://openweathermap.org/img/wn/${weather.icon}@2x.png",
                    errorBuilder: (context, error, stackTrace) {
                      return const Text("Impossible de récupérer l'image");
                    },
                  ),
                  DisplayWeatherInformation(data: "Heure : $date"),
                  DisplayWeatherInformation(
                      data: "T° : ${weather.temperature} °C"),
                  DisplayWeatherInformation(
                      data: "Description : ${weather.description}"),
                  DisplayWeatherInformation(
                      data: "Vitesse du vent : ${weather.windSpeed}"),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
