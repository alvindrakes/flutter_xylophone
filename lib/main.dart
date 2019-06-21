import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int soundNumber) {
    setState(() {
      final player = AudioCache();
      player.play('note$soundNumber.wav');
    });
  }

  // the return type for dart function is not only the primitive type
  Expanded buildKey({int noteNumber, Color chosenColor}) {
    return Expanded(
      child: FlatButton(
        color: chosenColor,
        onPressed: () {
          playSound(noteNumber);
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
              buildKey(noteNumber: 1, chosenColor: Colors.orange),
              buildKey(noteNumber: 2, chosenColor: Colors.blue),
              buildKey(noteNumber: 3, chosenColor: Colors.yellow),
              buildKey(noteNumber: 4, chosenColor: Colors.black),
              buildKey(noteNumber: 5, chosenColor: Colors.purple),
              buildKey(noteNumber: 6, chosenColor: Colors.pink),
              buildKey(noteNumber: 7, chosenColor: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
