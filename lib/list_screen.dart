import 'package:counter_application/detail_screen.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 30,
                    backgroundImage: AssetImage('images/1867702.jpg'),
                  ),
                  title: index > 20
                      ? Text("Screen ${index - 20}")
                      : Text("Person $index"),
                  subtitle: Text("Subtitle $index"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    if (index == 21) {
                      Navigator.of(context).pushNamed("/screen_one");
                    } else if (index == 22) {
                      Navigator.of(context).pushNamed("/screen_two");
                    } else if (index == 23) {
                      Navigator.of(context).pushNamed("/screen_three");
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailScreen(
                                index: index,
                              )));
                    }
                  }),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 24)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
