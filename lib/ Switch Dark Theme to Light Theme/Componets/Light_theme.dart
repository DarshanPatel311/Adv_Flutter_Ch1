import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/golbal_variable.dart';

Widget LightButton({required  set}) {
  return InkWell(
    onTap: () {
      set();
      isDark = false;
    },
    child: Container(
      alignment: Alignment.center,
      margin: EdgeInsetsDirectional.all(20),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: (isDark)?Colors.redAccent:Colors.amber,
          borderRadius: BorderRadius.circular(15)
      ),child: Text('Light Icon',style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold
    ),),
    ),
  );
}

