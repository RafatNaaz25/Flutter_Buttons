// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyWidget1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyWidget1> {
  bool? flag1 = true;
  bool? flag2 = true;
  String msg = "";
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          ListTile(
              title: const Text('C'),
              leading: Checkbox(
                value: flag1,
                onChanged: (value) {
                  setState(() {
                    flag1 = value;
                  });
                },
              )),
          ListTile(
              title: const Text('DART'),
              leading: Checkbox(
                value: flag2,
                onChanged: (value) {
                  setState(() {
                    flag2 = value;
                  });
                },
              )),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  msg = "";
                  if (flag1 == true) {
                    msg = 'C,';
                  }
                  if (flag2 == true) {
                    msg += ' DART';
                  }
                });
              },
              child: const Text('OK')),
          Padding(
              padding: const EdgeInsets.all(20),
              child: Text('You Selected $msg'))
        ],
      ),
      appBar: AppBar(
        title: const Text('Checkbox Demo'),
      ),
    )));
  }
}
