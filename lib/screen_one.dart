import 'package:counter_application/screen_two.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Screent One",
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (cxt) {
                  //   return const ScreenTwo();
                  // }));
                  Navigator.of(context).pushNamed("/screen_two");
                },
                child: const Text("Screen Two")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (cxt) {
                  //   return const ScreenTwo();
                  // }));
                  Navigator.of(context).pushNamed("/screen_three");
                },
                child: const Text("Screen Three")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (cxt) {
                  //   return const ScreenTwo();
                  // }));
                  Navigator.of(context).pushNamed("/list");
                },
                child: const Text("Screen List" ))
          ],
        ),
      )),
    );
  }
}
