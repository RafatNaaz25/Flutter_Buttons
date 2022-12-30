// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyWidget2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget2> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
        body: Center(
          child: Text("Counter is $i",
          style: const TextStyle(fontSize: 30, color: Colors.green))),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              i++;
            });
          },
          child: const Icon(Icons.add)),
      appBar: AppBar(title: const Text('Floating Button')),
    )));
  }
}
