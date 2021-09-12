import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Padding buildKey({Color color, int soundNumber}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: color,
        height: 66,
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: null,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('* * X y l o p h o n e * *',
              style: TextStyle(
                  fontFamily: 'Qwigley',
                  fontSize: 55,
                  color: Colors.red.shade100)),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(),
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.grey, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.deepPurple, soundNumber: 7),
              buildKey(color: Colors.green, soundNumber: 8),
              buildKey(color: Colors.white, soundNumber: 9),
            ],
          ),
        ),
      ),
    );
  }
}
