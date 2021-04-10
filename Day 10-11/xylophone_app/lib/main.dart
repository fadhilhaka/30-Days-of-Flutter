import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Note(number: 1, color: Colors.indigo[300]),
              Note(number: 2, color: Colors.indigo[400]),
              Note(number: 3, color: Colors.indigo[500]),
              Note(number: 4, color: Colors.indigo[600]),
              Note(number: 5, color: Colors.indigo[700]),
              Note(number: 6, color: Colors.indigo[800]),
              Note(number: 7, color: Colors.indigo[900]),
              Container(width: double.infinity)
            ],
          ),
        ),
      ),
    );
  }
}

class Note extends StatefulWidget {
  final int number;
  final Color color;

  const Note({Key key, this.number, this.color}) : super(key: key);

  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note> {
  static AudioCache player = AudioCache();

  void playSound(int number) {
    final AudioCache player = AudioCache();
    player.play('note$number.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(widget.color)),
        onPressed: () {
          playSound(widget.number);
        },
      ),
    );
  }
}
