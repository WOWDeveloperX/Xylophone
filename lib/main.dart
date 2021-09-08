import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  void buildKey() {
    Container(
      color: Colors.red,
      height: 120,
      child: TextButton(
        onPressed: () {
          playSound(1);
        },
        child: null,
      ),
    );
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
               buildKey();
                buildKey();
                 buildKey();
                  buildKey();
                   buildKey();
                    buildKey();
                     buildKey();


              ]
              ),
        ),
      ),
    );
  }
}
