// ignore_for_file: use_key_in_widget_constructors, no_logic_in_create_state, file_names

import 'package:flutter/material.dart';

class MyWidget7 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget7> {
  var i = 0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      body: Row(
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                i++;
              });
            },
            child: const Text('Click Here!'),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text('Count is $i',
                style: const TextStyle(fontSize: 25, color: Colors.red)),
          )
        ],
      ),
      appBar: AppBar(title: const Text('Text Button')),
    )));
  }
}
