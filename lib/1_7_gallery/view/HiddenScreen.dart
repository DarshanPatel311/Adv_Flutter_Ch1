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
      body:  GridView.builder(

        itemCount: 10,
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            mainAxisExtent: 140
        ),
        itemBuilder: (context, index) =>
            imgBox(Profile[index]['img'],Profile[index]['name'],Profile[index]['count']), ),
    );
  }
} Column imgBox(String img1,String name,int num) {
  return Column(
    children: [
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(img1),
                fit: BoxFit.cover
            )
        ),
      ),
      Text(name),
      Text(num.toString())
    ],
  );
}
