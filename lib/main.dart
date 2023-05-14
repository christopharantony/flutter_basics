import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 63, 76),
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              const RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 20,
                      fontFamily: 'Roboto',
                    ),
                    'Christophar',
                  )),
              TextButton(
                  onPressed: () => {print('Text Button Clicked')},
                  child: const Text('Submit')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () => {print('Elevated Button Clicked')},
                      child: const Text('Submit')),
                  IconButton(
                      onPressed: () => {print('Icon Button Clicked')},
                      icon: const Icon(Icons.mic))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
