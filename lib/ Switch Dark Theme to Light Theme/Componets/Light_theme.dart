import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/golbal_variable.dart';

Widget LightButton({required  toggle}) {
  return InkWell(
    onTap: () {
      toggle();
      isDark = false;
    },
    child: Container(
      alignment: Alignment.center,
      margin: EdgeInsetsDirectional.all(20),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15)
      ),child: Text('Light Icon',style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold
    ),),
    ),
  );
}

