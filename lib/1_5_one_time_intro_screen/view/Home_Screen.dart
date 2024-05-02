import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF3CA52),
        title: Text("Home",style: TextStyle(color: Colors.black),),
      ),
      body: Center(child: Text("Home Screen",style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,

      ),),),
    );
  }
}
