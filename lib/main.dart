import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //function that plays the sound
  void playSound(String sound) {
    final player = AudioCache();
    player.play('$sound');
  }

  //function that gives the expanded button with an an onPress function
  Widget buildUI({Color color, String sound}) {
    return Expanded(
      child: RaisedButton(
        color: color,
        onPressed: () {
          // Play the sound
          playSound(sound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            "Xylophone",
          ),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // buildUI(color: Colors.red, sound: 'ghaddan.wav'),
              // buildUI(color: Colors.orange, sound: 'haris.wav'),
              // buildUI(color: Colors.yellow, sound: 'htisham.wav'),
              // buildUI(color: Colors.teal, sound: 'mubeen.wav'),
              // buildUI(color: Colors.blue, sound: 'sajjad.wav'),
              // buildUI(color: Colors.green, sound: 'sami.wav'),
              // buildUI(color: Colors.purple, sound: 'shahriyar.wav'),
              // buildUI(color: Colors.white, sound: 'shazma.wav'),
              // buildUI(color: Colors.lightGreen, sound: 'shoaib.wav'),
              // buildUI(color: Colors.blueGrey, sound: 'uzair.wav'),
              buildUI(color: Colors.teal, sound: 'note1.wav'),
              buildUI(color: Colors.blue, sound: 'note2.wav'),
              buildUI(color: Colors.green, sound: 'note3.wav'),
              buildUI(color: Colors.purple, sound: 'note4.wav'),
              buildUI(color: Colors.white, sound: 'note5.wav'),
              buildUI(color: Colors.lightGreen, sound: 'note6.wav'),
              buildUI(color: Colors.blueGrey, sound: 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
