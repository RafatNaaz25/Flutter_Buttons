// ignore_for_file: no_logic_in_create_state, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyWidget6 extends StatefulWidget {
  

  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget6> {
  var i = 0;

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      body:
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
                alignment: Alignment.center),
            onPressed: () {
              setState(() {
                i++;
              });
            },
            child: const Text('Click Here!')),
      ]),
      appBar: AppBar(
        title: const Text('Text Button Styling'),
      ),
    )));
  }
}
