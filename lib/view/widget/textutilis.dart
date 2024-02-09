import 'package:flutter/material.dart';
// ignore: must_be_immutable
class TextUtilies extends StatelessWidget {
    TextUtilies( {super.key, required this.text, required this.fontSize,
     required this.fontWeight, required this.color, required this.underline});
final String text;
final double fontSize;
final FontWeight fontWeight;
final TextDecoration underline;
Color color;
  @override
  Widget build(BuildContext context) {
    return  Text(text,
    style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: color,
                    decoration: underline,
                   ),);
  }
}