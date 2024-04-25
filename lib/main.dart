import 'package:flutter/material.dart';

import ' Switch Dark Theme to Light Theme/Theme_Screen.dart';
import 'Stepper/Stepper_Screen.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme : ThemeData(
        brightness: Brightness.light,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red))
        )
      ),
      initialRoute: '/Stepper',
      routes: {

        '/Stepper':(context) => StepperApp(),
        '/Light/dark':(context) => ThemeScreen(),

      },
    );
  }
}







