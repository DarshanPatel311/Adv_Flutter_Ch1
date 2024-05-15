import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/img_list.dart';

class HiddenScreen extends StatelessWidget {
  const HiddenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.black,),
        backgroundColor: Colors.white,
        title: Text('Hidd Albums',style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
        actions: [
          Icon(Icons.search_rounded,color: Colors.black,size: 30,),
          Icon(Icons.more_vert,color: Colors.black,size: 30,),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            child: Text("Hidden Photos",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,

            ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage("assets/gallery/car1.jpg"),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage("assets/gallery/download.jpg"),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage("assets/gallery/download (1).jpg"),
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ],
          ),

        ],
      )
    );
  }
}
