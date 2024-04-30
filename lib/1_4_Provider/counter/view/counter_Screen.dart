import 'package:adv_flutter_ch1/1_4_Provider/counter/provider/counter_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4F6F52),
        title: Text("Counter App",style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25

        ),),
        centerTitle: true,
      ),
      body: Center(child: Text( Provider.of<CounterProvider>(context, listen: true).count.toString(),style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),),),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff4F6F52),
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).add();
          },
        child: Icon(Icons.add,color: Colors.white,),


      ),
    );
  }
}
