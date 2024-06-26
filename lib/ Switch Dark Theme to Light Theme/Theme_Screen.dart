import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/golbal_variable.dart';

import 'Componets/Dark_them.dart';
import 'Componets/Light_theme.dart';
import 'Componets/Text.dat.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _MyAppState();
}

class _MyAppState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    void set () {
      setState(() {});
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: (isDark) ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
          body: Center(
            child: Container(
                height: 700,
                width: 370,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                  ),
                ],  color: (isDark)?Colors.black:Colors.white, borderRadius: BorderRadius.circular(12)),
                child:Column(
                  children: [
                    textcolumn(),
                    SizedBox(height: 90,),
                    LightButton(set: set),
                    darkButton(set: set),
                  ],
                ),
            ),
          )),
    );
  }






}
