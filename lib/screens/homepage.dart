import 'package:flutter/material.dart';
import 'package:flutterfastforwardapp/widgets/tabs.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List tasks = [
    [
      "Take this session",
      true,
    ],
    [
      "Watch a movie",
      true,
    ],
    [
      "Take another session",
      true,
    ],
  ];
  void Clicked(bool? value, int index) {
    setState(() {
      tasks[index][1] = !tasks[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //print("This button has been pressed");
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Color.fromARGB(255, 16, 16, 16),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('TO DO APP BY GDSC'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Tabs(
            taskname: tasks[index][0],
            check: tasks[index][1],
            changed: (value) => Clicked(value, index),
          );
        },
      ),
    );
  }
}
