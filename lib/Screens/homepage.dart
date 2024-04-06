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
      backgroundColor: Color.fromARGB(255, 221, 221, 221),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
            ),
          ),
        child: Row(
          children: [
            
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
              theme: SideNavigationBarTheme(
                togglerTheme: SideNavigationBarTogglerTheme.standard(),
                itemTheme: SideNavigationBarItemTheme.standard(),
                dividerTheme: SideNavigationBarDividerTheme.standard(),
            ),
            ),
            
        
            /// Make it take the rest of the available width
            Expanded(
              child: views.elementAt(selectedIndex),
            )
          ],
        ),
      ),
    );
  }
}