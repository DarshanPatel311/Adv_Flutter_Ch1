import 'package:adv_flutter_ch1/1_4_Provider/changethem/provider/theme_provider.dart';
import 'package:adv_flutter_ch1/1_4_Provider/counter/provider/counter_provider.dart';
import 'package:adv_flutter_ch1/1_7_gallery/provider/gallery_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '1_5_one_time_intro_screen/provider/intro_provider.dart';
import '1_7_gallery/view/home_screen.dart';





void main() {
  runApp( MultiProvider(providers: [

    ChangeNotifierProvider(create: (context) => CounterProvider(),),
    ChangeNotifierProvider(create: (context) => ThemeProvider(),),
  ChangeNotifierProvider(
  create: (context) => IntroProvider(),),
    ChangeNotifierProvider(
      create: (context) => GalyerProvider(),),


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


      home: GalleryScreen(),
    );
  }
}







