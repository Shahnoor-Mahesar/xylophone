import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  String address(int no) {
    return 'note$no.wav';
  }

  Expanded buildW({required Color color, required int no}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final sound = AudioPlayer();
          sound.play(
            AssetSource(address(no)),
          );
        },
        child: Text(""),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
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
            children: [
              buildW(color: Colors.blue, no: 1),
              buildW(color: Colors.purple, no: 2),
              buildW(color: Colors.red, no: 3),
              buildW(color: Colors.orange, no: 4),
              buildW(color: Colors.yellow, no: 5),
              buildW(color: Colors.green, no: 6),
              buildW(color: Colors.teal, no: 7),
            ],
          ),
        ),
      ),
    );
  }
}
