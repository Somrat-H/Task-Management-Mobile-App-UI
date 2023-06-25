// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
myStyle(String text, double size, Color color, FontWeight fontWeight) {
  return Text(text, style: GoogleFonts.nunito(
    textStyle: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight
  )
  ));
}