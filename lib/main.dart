import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

//import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  // This widget is the root of your application.
  void sounds(int songNumber) {
    final player = AudioCache();
    player.play('assets/$songNumber.mp3');
  }

  Expanded songBuild({color, int songNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          sounds(songNumber);
        },
        style: ButtonStyle(
          backgroundColor: (color),
        ),
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
              songBuild(color: Colors.red, songNumber: 1),
              songBuild(color: Colors.blue, songNumber: 2),
              songBuild(color: Colors.yellow, songNumber: 3),
              songBuild(color: Colors.green, songNumber: 4),
            ],
          ),
        ),
      ),
    );
  }
}
