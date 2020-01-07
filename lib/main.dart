import 'package:flutter/material.dart';
import './views/game.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simon',
      home: Game(title: 'Simon'), //definis la page "Game" comme la page de démarage
    );
  }
}
