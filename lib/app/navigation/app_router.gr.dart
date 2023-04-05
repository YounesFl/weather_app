// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i6;

import '../presentation/select_weather/select_weather_view.dart' as _i4;
import '../presentation/weather_day/weather_day_view.dart' as _i3;
import 'main_navigation_view.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainNavigationRoute.name: (routeData) {
      return _i5.MaterialPageX<void>(
        routeData: routeData,
        child: const _i1.MainNavigationView(),
      );
    },
    WeatherDayTab.name: (routeData) {
      return _i5.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SelectWeatherTab.name: (routeData) {
      return _i5.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    WeatherDayRoute.name: (routeData) {
      return _i5.MaterialPageX<void>(
        routeData: routeData,
        child: _i5.WrappedRoute(child: const _i3.WeatherDayView()),
      );
    },
    SelectWeatherRoute.name: (routeData) {
      return _i5.MaterialPageX<void>(
        routeData: routeData,
        child: _i5.WrappedRoute(child: const _i4.SelectWeatherView()),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/main',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          MainNavigationRoute.name,
          path: '/main',
          children: [
            _i5.RouteConfig(
              WeatherDayTab.name,
              path: 'weatherDay',
              parent: MainNavigationRoute.name,
              children: [
                _i5.RouteConfig(
                  WeatherDayRoute.name,
                  path: '',
                  parent: WeatherDayTab.name,
                )
              ],
            ),
            _i5.RouteConfig(
              SelectWeatherTab.name,
              path: 'selectWeather',
              parent: MainNavigationRoute.name,
              children: [
                _i5.RouteConfig(
                  SelectWeatherRoute.name,
                  path: '',
                  parent: SelectWeatherTab.name,
                )
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.MainNavigationView]
class MainNavigationRoute extends _i5.PageRouteInfo<void> {
  const MainNavigationRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainNavigationRoute.name,
          path: '/main',
          initialChildren: children,
        );

  static const String name = 'MainNavigationRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class WeatherDayTab extends _i5.PageRouteInfo<void> {
  const WeatherDayTab({List<_i5.PageRouteInfo>? children})
      : super(
          WeatherDayTab.name,
          path: 'weatherDay',
          initialChildren: children,
        );

  static const String name = 'WeatherDayTab';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class SelectWeatherTab extends _i5.PageRouteInfo<void> {
  const SelectWeatherTab({List<_i5.PageRouteInfo>? children})
      : super(
          SelectWeatherTab.name,
          path: 'selectWeather',
          initialChildren: children,
        );

  static const String name = 'SelectWeatherTab';
}

/// generated route for
/// [_i3.WeatherDayView]
class WeatherDayRoute extends _i5.PageRouteInfo<void> {
  const WeatherDayRoute()
      : super(
          WeatherDayRoute.name,
          path: '',
        );

  static const String name = 'WeatherDayRoute';
}

/// generated route for
/// [_i4.SelectWeatherView]
class SelectWeatherRoute extends _i5.PageRouteInfo<void> {
  const SelectWeatherRoute()
      : super(
          SelectWeatherRoute.name,
          path: '',
        );

  static const String name = 'SelectWeatherRoute';
}
