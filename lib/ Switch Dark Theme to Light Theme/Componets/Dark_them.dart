import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/golbal_variable.dart';

Widget darkButton({required  toggle}) {
  return InkWell(
    onTap: () {
      toggle();
      isDark=true;
    },
    child: Container(
      alignment: Alignment.center,
      margin: EdgeInsetsDirectional.all(20),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: (isDark)?Colors.amber:Colors.redAccent,
          borderRadius: BorderRadius.circular(15)
      ),child: Text('Dark Icon',style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold
    ),),
    ),
  );
}