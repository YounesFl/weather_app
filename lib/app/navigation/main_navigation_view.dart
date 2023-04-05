import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/app/navigation/app_router.gr.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  @override
  State<MainNavigationView> createState() => _MainNavigationViewState();
}

class _MainNavigationViewState extends State<MainNavigationView> {
  static const tabs = [
    WeatherDayTab(),
    SelectWeatherTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: tabs,
      builder: (context, child, animation) => child,
      bottomNavigationBuilder: _buildBottomNavigationBar,
    );
  }

  Widget _buildBottomNavigationBar(
      BuildContext context, TabsRouter tabsRouter) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 24,
            color: Colors.black.withOpacity(0.10),
          ),
          BoxShadow(
            blurRadius: 40,
            color: Colors.black.withOpacity(0.05),
          ),
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Theme.of(context).primaryColor,
        currentIndex: tabsRouter.activeIndex,
        onTap: (i) {
          if (i == tabsRouter.activeIndex) {
            AutoRouter.of(context).navigate(tabs[tabsRouter.activeIndex]);
          }
          return tabsRouter.setActiveIndex(i);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Météo du jour',
            icon: Icon(Icons.sunny),
          ),
          BottomNavigationBarItem(
            label: 'Météo de la semaine',
            icon: Icon(Icons.cloud),
          ),
        ],
      ),
    );
  }
}
