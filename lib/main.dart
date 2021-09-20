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
        height: 62,
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: (Image.asset('images/button1.png')),
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
          title: Text(' - - X  y l o p h o~n e - -',
              style: TextStyle(
                  fontFamily: 'CHERISH',
                  fontSize: 54,
                  color: Colors.red.shade100)),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 5.0),
              buildKey(color: Colors.black, soundNumber: 1),
              buildKey(color: Colors.black, soundNumber: 2),
              buildKey(color: Colors.black, soundNumber: 3),
              buildKey(color: Colors.black, soundNumber: 4),
              buildKey(color: Colors.black, soundNumber: 5),
              buildKey(color: Colors.black, soundNumber: 6),
              buildKey(color: Colors.black, soundNumber: 7),
              buildKey(color: Colors.black, soundNumber: 8),
              buildKey(color: Colors.black, soundNumber: 9),
              buildKey(color: Colors.black, soundNumber: 10),
            ],
          ),
        ),
      ),
    );
  }
}
