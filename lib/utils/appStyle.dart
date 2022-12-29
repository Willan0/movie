import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppStyle{
  static getWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static getHeight(BuildContext context)=> MediaQuery.of(context).size.height;
  static Color abC = const Color.fromRGBO(128, 0, 128, 1);
  static Color abB = const Color.fromRGBO(192, 192, 192, 0.3);
  static Color textColor = Colors.black;
}