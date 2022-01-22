import 'dart:ui';

import 'package:flutter/material.dart';

import 'easyPuzzle.dart';
import 'hardPuzzle.dart';
import 'normalPuzzle.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LevelPuzzle(),
    );
  }
}

class LevelPuzzle extends StatefulWidget {
  const LevelPuzzle({Key? key}) : super(key: key);

  @override
  _LevelPuzzleState createState() => _LevelPuzzleState();
}

class _LevelPuzzleState extends State<LevelPuzzle> {
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
              Padding(padding: EdgeInsets.only(top: 70)),
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
                  onPressed: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => EasyPuzzle())),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Text(
                    'Easy',
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
                  onPressed: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NormalPuzzle())),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Text(
                    'Normal',
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
                  onPressed: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HardPuzzle())),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Text(
                    'Hard',
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
