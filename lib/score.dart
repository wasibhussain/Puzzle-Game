import 'dart:ui';

import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Score(),
    );
  }
}

class Score extends StatefulWidget {
  const Score({Key? key}) : super(key: key);

  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/puzzle2.jfif"), fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Column(children: [
              Padding(padding: EdgeInsets.only(top: 80)),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/score.png"))),
              ),
              SizedBox(
                width: 190,
                height: 55,
                child: RaisedButton(
                  color: Colors.white.withOpacity(1.0),
                  onPressed: null,
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
                padding: EdgeInsets.only(top: 80),
              ),
              SizedBox(
                width: 190,
                height: 55,
                child: RaisedButton(
                  color: Color(0xff5f3b23).withOpacity(1.0),
                  onPressed: null,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Text(
                    'Easy: 50',
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
                  color: Color(0xff5f3b23).withOpacity(1.0),
                  onPressed: null,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Text(
                    'Normal: 25',
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
                  color: Color(0xff5f3b23).withOpacity(1.0),
                  onPressed: null,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Text(
                    'Hard: 2',
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
