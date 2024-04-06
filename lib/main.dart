import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gishackathon/Auth/auth_page.dart';
import 'package:gishackathon/firebase_options.dart';
import 'package:window_manager/window_manager.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    //options: DefaultFirebaseOptions.android, // if you're using windows emulator
    //options: DefaultFirebaseOptions.ios, // if you're using windows emulator 
    options: DefaultFirebaseOptions.web, // for web
  );

  await windowManager.ensureInitialized();

  WindowOptions windowOptions= const WindowOptions(
    minimumSize: Size(1200, 700),
    size: Size(1600, 900),
    center: true,
    title: "Adret",
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage()
    );
  }
}
