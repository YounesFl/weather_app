import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/app/navigation/app_router.gr.dart';
import 'package:weather_app/app/injection_container.dart' as ic;

void main() {
  ic.init();
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(initialDeepLink: '/main'),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: FlexThemeData.light(scheme: FlexScheme.deepPurple),
    );
  }
}
