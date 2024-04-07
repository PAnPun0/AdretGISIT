import 'package:flutter/material.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child:Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {}, // Image tapped
              child: Image.asset(
              'assets/sun.png',
              width: 910.0,
              height: 250.0,
                ),
              ),
              GestureDetector(
              onTap: () {}, // Image tapped
              child: Image.asset(
              'assets/wind.png',
              width: 910.0,
              height:250.0,
                ),
              ),
              GestureDetector(
              onTap: () {}, // Image tapped
              child: Image.asset(
              'assets/energy.png',
              width: 910.0,
              height: 250.0,
                ),
              ),
          ],
        ),
       )
      )
    );
  }
}