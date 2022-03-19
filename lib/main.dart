import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const XylophoneApp(),
    );
  }
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    void playSound(int soundNumbers) {
      final player = AudioCache();
      player.play('note$soundNumbers.wav');
    }

    Expanded buildKey({Color? color, int? soundNumber}) {
      return Expanded(
        child: FlatButton(
          color: color,
          // style: ElevatedButton.styleFrom(primary: Colors.color),
          onPressed: () {
            // voiceFun();
            playSound(soundNumber!);
          },
          child: Text('press'),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.deepOrange, soundNumber: 2),
            buildKey(color: Colors.green, soundNumber: 3),
            buildKey(color: Colors.blue, soundNumber: 4),
            buildKey(color: Colors.purple, soundNumber: 5),
            buildKey(color: Colors.indigo, soundNumber: 6),
            buildKey(color: Colors.yellow, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
