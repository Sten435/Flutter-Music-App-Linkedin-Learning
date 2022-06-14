import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Map<int, Color> data = {
    1: Colors.red,
    2: Colors.orange,
    3: Colors.yellow,
    4: Colors.green,
    5: Colors.green.shade700,
    6: Colors.blue,
    7: Colors.purple
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: buildKey(),
          ),
        ),
      ),
    );
  }

  List<Widget> buildKey() {
    List<Widget> list = [];

    data.forEach(
      (key, value) => list.add(
        Expanded(
          child: Container(
            color: value,
            child: TextButton(
              onPressed: () async => await AudioCache().play("note$key.wav"),
              child: Container(),
            ),
          ),
        ),
      ),
    );

    return list;
  }
}
