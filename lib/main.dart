import 'package:counter_application/list_screen.dart';
import 'package:counter_application/screen_one.dart';
import 'package:counter_application/screen_three.dart';
import 'package:counter_application/screen_two.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ScreenOne(),
      routes: {
        "/screen_one": (context) => const ScreenOne(),
        "/screen_two": (context) => const ScreenTwo(),
        "/screen_three": (context) => const ScreenThree(),
        "/list": (context) => const ListScreen(),
      },
    );
  }
}
