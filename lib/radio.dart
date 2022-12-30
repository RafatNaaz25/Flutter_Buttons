// ignore_for_file: use_key_in_widget_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';

class MyWidget3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget3> {
  String? msg = "";
  String? gv = "Male";
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          ListTile(
              title: const Text('Male'),
              leading: Radio(
                  value: 'Male',
                  groupValue: gv,
                  onChanged: (value) {
                    setState(() {
                      gv = value;
                    });
                  })),
          ListTile(
              title: const Text('Female'),
              leading: Radio(
                  value: 'Female',
                  groupValue: gv,
                  onChanged: (value) {
                    setState(() {
                      gv = value;
                    });
                  })),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  msg = gv;
                });
              },
              child: const Text('OK')),
          Padding(
              padding: const EdgeInsets.all(20),
              child: Text('You Selected $msg'))
        ],
      ),
      appBar: AppBar(title: const Text('Radio Demo')),
    )));
  }
}
