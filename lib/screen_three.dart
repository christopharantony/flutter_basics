import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
          child: Center(
        child: Text(
          "Screent Three",
          style: TextStyle(fontSize: 50),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 30),
        child: Row(children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 255, 107, 107))),
              child: const Icon(Icons.arrow_back))
        ]),
      ),
    );
  }
}
