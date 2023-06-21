import 'package:flutter/material.dart';
import 'package:somrat/%20widget/demo_refresh_data.dart';
import 'package:somrat/%20widget/uft_practice.dart';
import 'package:somrat/ui/navBar/home_page.dart';
import 'package:somrat/ui/navBar/navbar.dart';
import 'package:somrat/ui/on_boarding1.dart';
import 'package:somrat/ui/qrScanner/scanner.dart';
import 'package:somrat/ui/splash_screen.dart';
import 'package:somrat/ui/team_member.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],

        // Define the default font family.
        fontFamily: 'NUnit',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}

