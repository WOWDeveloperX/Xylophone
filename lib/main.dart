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
        body: SafeArea(
          child: Column(children: <Widget>[
            Container(
              color: Colors.red,
              height: 60,
              width: 200,
              child: TextButton(
                onPressed: () {
                  playSound(1);
                },
                child: null,
              ),
            ),
            Container(
              color: Colors.orange,
              child: TextButton(
                onPressed: () {
                  playSound(2);
                },
              ),
            ),
            Container(
              color: Colors.yellow,
              child: TextButton(
                onPressed: () {
                  playSound(3);
                },
              ),
            ),
            Container(
              color: Colors.green,
              child: TextButton(
                onPressed: () {
                  playSound(4);
                },
              ),
            ),
            Container(
              color: Colors.cyan,
              child: TextButton(
                onPressed: () {
                  playSound(5);
                },
              ),
            ),
            Container(
              color: Colors.blue,
              child: TextButton(
                onPressed: () {
                  playSound(6);
                },
              ),
            ),
            Container(
              color: Colors.deepPurple,
              child: TextButton(
                onPressed: () {
                  playSound(7);
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
