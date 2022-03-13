import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xilophone());
}

class Xilophone extends StatefulWidget {
  const Xilophone({Key? key}) : super(key: key);

  @override
  State<Xilophone> createState() => _XilophoneState();
}

class _XilophoneState extends State<Xilophone> {
  void playsound(int soundNumber) {
    final play = AudioCache();
    play.play('note$soundNumber.wav');
  }

  Expanded buildkey({required Color color, required int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundNumber);
        },
        child: const Center(
          child: Text('Click Me'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildkey(color: Colors.purple, soundNumber: 1),
              buildkey(color: Colors.blue, soundNumber: 2),
              buildkey(color: Colors.indigo, soundNumber: 3),
              buildkey(color: Colors.green, soundNumber: 4),
              buildkey(color: Colors.yellow, soundNumber: 5),
              buildkey(color: Colors.orange, soundNumber: 6),
              buildkey(color: Colors.red, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
