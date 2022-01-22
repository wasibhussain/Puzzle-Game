import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:puzzle_game/easyPuzzle.dart';
import 'package:puzzle_game/main.dart';
import 'package:puzzle_game/normalPuzzle.dart';
import 'package:puzzle_game/score.dart';
import 'levelPuzzle.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Puzzle(),
    );
  }
}

class Puzzle extends StatefulWidget {
  const Puzzle({Key? key}) : super(key: key);

  @override
  _PuzzleState createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage("assets/puzzle2.jfif"),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Column(children: [
              Padding(padding: EdgeInsets.only(top: 80)),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/logo1.png"))),
              ),
              Text(
                "P U Z Z L E",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70),
              ),
              SizedBox(
                width: 190,
                height: 55,
                child: RaisedButton(
                  color: Color(0xff5f3b23).withOpacity(0.7),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LevelPuzzle())),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Text(
                    'New Game',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              SizedBox(
                width: 190,
                height: 55,
                child: RaisedButton(
                  color: Color(0xff5f3b23).withOpacity(0.7),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Score())),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Text(
                    'Score',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              SizedBox(
                width: 190,
                height: 55,
                child: RaisedButton(
                  color: Color(0xff5f3b23).withOpacity(0.7),
                  onPressed: () => exit(0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Text(
                    'Exit',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
