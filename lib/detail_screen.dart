import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key, required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Center(
        child: Text(
          "Person $index",
          style: const TextStyle(fontSize: 50),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
