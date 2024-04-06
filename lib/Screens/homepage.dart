import 'package:flutter/material.dart';
import 'package:gishackathon/Screens/aboutus.dart';
import 'package:gishackathon/Screens/analytics.dart';
import 'package:gishackathon/Screens/maps.dart';
import 'package:gishackathon/Screens/profile.dart';
import 'package:gishackathon/Screens/settings.dart';
import 'package:side_navigation/side_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   List<Widget> views = const [
    maps(),
    Analytics(),
    Profile(),
    settings(),
    aboutus()
  ];

  /// The currently selected index of the bar
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Row(
        
        children: [
            Image.asset(
              'assets/Logo.png',
                  height: 35.0,
                  filterQuality: FilterQuality.high,
                  ),
          SideNavigationBar(
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.map,
                label: 'Карта',
              ),
              SideNavigationBarItem(
                icon: Icons.analytics,
                label: 'Аналитика',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'Профиль',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Настройки',
              ),
              SideNavigationBarItem(
                icon: Icons.groups,
                label: 'О нас',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),

          /// Make it take the rest of the available width
          Expanded(
            child: views.elementAt(selectedIndex),
          )
        ],
      ),
    );
  }
}