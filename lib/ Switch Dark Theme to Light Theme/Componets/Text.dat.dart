import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Column textcolumn() {
  return Column(
    children: [
      SizedBox(
        height: 100,
      ),
      Text(
        'Yo Man!',
        style: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text("It's a simple example of\n            dark theme",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.grey
        ),)
    ],
  );
}