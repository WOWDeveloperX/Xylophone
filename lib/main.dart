import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  height: 120,
                  child: TextButton(
                    onPressed: () {
                      playSound(1);
                    },
                    child: null,
                  ),
                ),
                Container(
                  color: Colors.orange,
                  height: 120,
                  child: TextButton(
                    onPressed: () {
                      playSound(2);
                    },
                    child: null,
                  ),
                ),
                Container(
                  color: Colors.yellow,
                  height: 120,
                  child: TextButton(
                    onPressed: () {
                      playSound(3);
                    },
                    child: null,
                  ),
                ),
                Container(
                  color: Colors.green,
                  height: 120,
                  child: TextButton(
                    onPressed: () {
                      playSound(4);
                    },
                    child: null,
                  ),
                ),
                Container(
                  color: Colors.cyan,
                  height: 120,
                  child: TextButton(
                    onPressed: () {
                      playSound(5);
                    },
                    child: null,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 120,
                  child: TextButton(
                    onPressed: () {
                      playSound(6);
                    },
                    child: null,
                  ),
                ),
                Container(
                  color: Colors.deepPurple,
                  height: 120,
                  child: TextButton(
                    onPressed: () {
                      playSound(7);
                    },
                    child: null,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
