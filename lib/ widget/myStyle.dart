import 'package:flutter/material.dart';

myStyle(String text, double size, Color color, FontWeight fontWeight) {
  return Text(text, style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight
  ));
}