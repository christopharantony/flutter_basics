import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (BuildContext contxt, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 30,
                    backgroundImage: index % 2 == 0
                        ? const AssetImage("images/1867702.jpg")
                        : NetworkImage("https://picsum.photos/20$index")
                            as ImageProvider,
                  ),
                  title: Text('Person ${index + 1}'),
                  subtitle: const Text('This is the subtitle'),
                  trailing: Text('${index + 1}:00 AM'),
                );
              },
              separatorBuilder: (BuildContext contxt, int index) {
                return const Divider();
              },
              itemCount: 20)),
    );
  }
}
