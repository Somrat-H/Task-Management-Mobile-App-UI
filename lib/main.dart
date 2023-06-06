import 'package:flutter/material.dart';
import 'package:somrat/ui/navBar/home_page.dart';
import 'package:somrat/ui/navBar/navbar.dart';
import 'package:somrat/ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),

    );
  }
}

