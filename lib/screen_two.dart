import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Screent Two",
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/screen_one");
                },
                child: const Text("Screen One")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/screen_three");
                },
                child: const Text("Screen Three")),
          ],
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
