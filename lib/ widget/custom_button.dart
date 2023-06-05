import 'package:flutter/material.dart';

customButton(double h, double w, Color color, double radius, Widget text){
  return Container(
    height: h,
    width: w,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
    ),
    child: Center(child: text),
  );
}