import 'package:adv_flutter_ch1/1_4_Provider/changethem/provider/theme_provider.dart';
import 'package:adv_flutter_ch1/1_4_Provider/counter/provider/counter_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import ' Switch Dark Theme to Light Theme/Theme_Screen.dart';
import '1_4_Provider/changethem/view/change_theme_screen.dart';
import '1_4_Provider/counter/view/counter_Screen.dart';
import 'Stepper/Stepper_Screen.dart';
import 'Utils/golbal_variable.dart';

void main() {
  runApp( MultiProvider(providers: [

    ChangeNotifierProvider(create: (context) => CounterProvider(),),
    ChangeNotifierProvider(create: (context) => ThemeProvider(),)
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


      themeMode: Provider.of<ThemeProvider>(context).isDark?ThemeMode.dark:ThemeMode.light,

      debugShowCheckedModeBanner: false,

      theme: ThemeData.light(useMaterial3: false),
      darkTheme: ThemeData.dark(useMaterial3: false),


      initialRoute: '/ChangeTheme',
      routes: {

        '/Stepper':(context) => StepperApp(),
        '/Light/dark':(context) => ThemeScreen(),
        '/CounterScreen':(context) => CounterScreen(),
        '/ChangeTheme':(context) => ChangeTheme(),

      },
    );
  }
}







