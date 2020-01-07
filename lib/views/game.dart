import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  Game({Key key, this.title}) : super(key: key);
  //definition de la page "game"
  final String title;

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  //voyants de couleur
  bool blue = false;
  bool red = false;
  bool green = false;
  bool yellow = false;
  /*
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(  //centre les élements 
        child: Container(
          height: 393,
          child: GridView.count( //met les bouttons en grille
           crossAxisCount: 2, //2 boutons par ligne
            primary: false, //empèche le scroll 
            padding: const EdgeInsets.all(10.0), //crée un bord
            crossAxisSpacing: 10.0, 
            mainAxisSpacing: 10.0, //espace entre les boutons
            children: <Widget>[
              Container( 
                width: double.infinity,
                height: double.infinity, //le bouton prends tout l'espasce disponible
                child: new RaisedButton( //bouton bleu
                  highlightColor: Colors.blue,
                  color: blue ? Colors.blue : Colors.blue[100],
                  onPressed: () {},
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity, //le bouton prends tout l'espasce disponible
                child: new RaisedButton( //bouton rouge
                  highlightColor: Colors.red,
                  color: red ? Colors.red : Colors.red[100],
                  onPressed: () {},
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity, //le bouton prends tout l'espasce disponible
                child: new RaisedButton( //bouton vert
                  highlightColor: Colors.green,
                  color: green ? Colors.green : Colors.green[100],
                  onPressed: () {},
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity, //le bouton prends tout l'espasce disponible
                child: new RaisedButton( //bouton jaune
                  highlightColor: Colors.yellow,
                  color: yellow ? Colors.yellow : Colors.yellow[100],
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
