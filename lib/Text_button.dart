// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyWidget8 extends StatelessWidget {
  var i = 0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Text('Count is $i'),
            TextButton(
                onPressed: () {
                  i++;
                  print("Button clicked $i");
                },
                child: const Text('Click Here!'))
          ],
        ),
        appBar: AppBar(
          title: const Text('Text Button'),
        ),
      ),
    ));
  }
}
