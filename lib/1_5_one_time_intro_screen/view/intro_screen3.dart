import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/intro_provider.dart';
import 'Home_Screen.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5B358),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(370, 43, 0, 0),
                child: Text(
                  'Skip',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 60,),
              Container(
                  height: 350,
                  width: 300,
                  child: Image.asset(
                    'assets/img/2.png',
                    fit: BoxFit.cover,
                  )),
              SizedBox(height: 70,),
              Text(
                'Pick Up Or delivery ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xff2A2D37)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'We make it simple  to  find the food\n  you crave.Enter your address and\n                  let us do the rest.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff876945)),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Provider.of<IntroProvider>(context, listen: false ).onPressed();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
                },
                child: Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Color(0xff2A2D37),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Get started',
                      style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
