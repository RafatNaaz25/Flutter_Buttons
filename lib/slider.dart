// ignore_for_file: use_key_in_widget_constructors, no_logic_in_create_state, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyWidget4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget4> {
  double i = 1;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(20),
              child: Slider(
                  min: 1.0,
                  max: 100.0,
                  divisions: 10,
                  value: i,
                  onChanged: (value) {
                    setState(() {
                      i = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.all(20), 
              child: Text('Selected Value is $i'))
        ],
      ),
      appBar: AppBar(title: const Text('Slider demo')),
    )));
  }
}
