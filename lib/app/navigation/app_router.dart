import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:weather_app/app/navigation/main_navigation_view.dart';
import 'package:weather_app/app/presentation/select_weather/select_weather_view.dart';
import 'package:weather_app/app/presentation/weather_day/weather_day_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(
      path: '/main',
      page: MainNavigationView,
      initial: true,
      children: [
        AutoRoute<void>(
          path: 'weatherDay',
          page: EmptyRouterPage,
          name: 'WeatherDayTab',
          children: [
            AutoRoute<void>(
              path: '',
              page: WeatherDayView,
            ),
          ],
        ),
        AutoRoute<void>(
          path: 'selectWeather',
          page: EmptyRouterPage,
          name: 'SelectWeatherTab',
          children: [
            AutoRoute<void>(
              path: '',
              page: SelectWeatherView,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
