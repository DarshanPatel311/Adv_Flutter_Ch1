import 'package:adv_flutter_ch1/1_4_Provider/counter/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import ' Switch Dark Theme to Light Theme/Theme_Screen.dart';
import '1_4_Provider/counter/view/counter_Screen.dart';
import 'Stepper/Stepper_Screen.dart';

void main() {
  runApp( MultiProvider(providers: [

    ChangeNotifierProvider(create: (context) => CounterProvider(),),
  ],child: MyApp(),));
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
      initialRoute: '/CounterScreen',
      routes: {

        '/Stepper':(context) => StepperApp(),
        '/Light/dark':(context) => ThemeScreen(),
        '/CounterScreen':(context) => CounterScreen(),

      },
    );
  }
}







