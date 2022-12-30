// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

class MyWidget5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget5> {
  bool flag1 = true;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      body: ListTile(
          title: const Text('Developer Options'),
          leading: Switch(
              value: flag1,
              onChanged: (value) {
                setState(() {
                  flag1 = value;
                });
              })),
      appBar: AppBar(title: const Text('Switch Demo')),
    )));
  }
}
