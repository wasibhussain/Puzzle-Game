import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // static const PrimaryColor = Color(0xFF808080);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HardPuzzle(),
    );
  }
}

class HardPuzzle extends StatefulWidget {
  const HardPuzzle({Key? key}) : super(key: key);

  @override
  _HardPuzzleState createState() => _HardPuzzleState();
}

class _HardPuzzleState extends State<HardPuzzle> {
  //
  TextStyle styles = TextStyle(fontSize: 40, color: Colors.white);
  int isWin = 1;
  List<String> btn = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    ""
  ];
  String btn1 = "",
      btn2 = "",
      btn3 = "",
      btn4 = "",
      btn5 = "",
      btn6 = "",
      btn7 = "",
      btn8 = "",
      btn9 = "",
      btn10 = "",
      btn11 = "",
      btn12 = "",
      btn13 = "",
      btn14 = "",
      btn15 = "";
  int time = 0;
  initState() {
    super.initState();
    shuffleValue();
    setTimer();
  }

  setTimer() {
    Timer.periodic(
        Duration(seconds: 1),
        (timer) => {
              setState(() {
                time++;
              })
            });
  }

  shuffleValue() {
    setState(() {
      btn.shuffle();
      btn1 = btn[0];
      btn2 = btn[1];
      btn3 = btn[2];
      btn4 = btn[3];
      btn5 = btn[4];
      btn6 = btn[5];
      btn7 = btn[6];
      btn8 = btn[7];
      btn9 = btn[8];
      btn10 = btn[9];
      btn11 = btn[10];
      btn12 = btn[11];
      btn13 = btn[12];
      btn14 = btn[13];
      btn15 = btn[14];
    });
  }

  btnRadiusShape() {
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    );
  }

  //
  Widget row1Buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn1",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button1 : null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn2",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button2 : null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn3",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button3 : null,
            ),
          ),
        ),
      ],
    );
  }

  Widget row2Buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn4",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button4 : null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn5",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button5 : null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn6",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button6 : null,
            ),
          ),
        ),
      ],
    );
  }

  Widget row3Buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn7",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button7 : null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn8",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button8 : null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn9",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button9 : null,
            ),
          ),
        ),
      ],
    );
  }

  Widget row4Buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn10",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button10 : null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn11",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button11 : null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn12",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button12 : null,
            ),
          ),
        ),
      ],
    );
  }

  Widget row5Buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn13",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button13 : null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn14",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button14 : null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
            minWidth: 80,
            height: 80,
            buttonColor: Color(0xFF5f3b23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            child: RaisedButton(
              child: Text(
                "$btn15",
                style: styles,
              ),
              onPressed: (isWin == 1) ? button15 : null,
            ),
          ),
        ),
      ],
    );
  }

  button1() {
    // showMessage();
    if (btn2 == "") {
      setState(() {
        btn2 = btn1;
        btn1 = "";
      });
    } else if (btn4 == "") {
      setState(() {
        btn4 = btn1;
        btn1 = "";
      });
    }
  }

  button2() {
    if (btn1 == "") {
      setState(() {
        btn1 = btn2;
        btn2 = "";
      });
    } else if (btn3 == "") {
      setState(() {
        btn3 = btn2;
        btn2 = "";
      });
    } else if (btn5 == "") {
      setState(() {
        btn5 = btn2;
        btn2 = "";
      });
    }
  }

  button3() {
    if (btn2 == "") {
      setState(() {
        btn2 = btn3;
        btn3 = "";
      });
    } else if (btn6 == "") {
      setState(() {
        btn6 = btn3;
        btn3 = "";
      });
    }
  }

  button4() {
    if (btn1 == "") {
      setState(() {
        btn1 = btn4;
        btn4 = "";
      });
    } else if (btn5 == "") {
      setState(() {
        btn5 = btn4;
        btn4 = "";
      });
    } else if (btn7 == "") {
      setState(() {
        btn7 = btn4;
        btn4 = "";
      });
    }
  }

  button5() {
    if (btn2 == "") {
      setState(() {
        btn2 = btn5;
        btn5 = "";
      });
    } else if (btn6 == "") {
      setState(() {
        btn6 = btn5;
        btn5 = "";
      });
    } else if (btn8 == "") {
      setState(() {
        btn8 = btn5;
        btn5 = "";
      });
    } else if (btn4 == "") {
      setState(() {
        btn4 = btn5;
        btn5 = "";
      });
    }
  }

  button6() {
    if (btn3 == "") {
      setState(() {
        btn3 = btn6;
        btn6 = "";
      });
    } else if (btn5 == "") {
      setState(() {
        btn5 = btn6;
        btn6 = "";
      });
    } else if (btn9 == "") {
      setState(() {
        btn9 = btn6;
        btn6 = "";
      });
    }
  }

  button7() {
    if (btn4 == "") {
      setState(() {
        btn4 = btn7;
        btn7 = "";
      });
    } else if (btn8 == "") {
      setState(() {
        btn8 = btn7;
        btn7 = "";
      });
    } else if (btn10 == "") {
      setState(() {
        btn10 = btn7;
        btn7 = "";
      });
    }
  }

  button8() {
    if (btn5 == "") {
      setState(() {
        btn5 = btn8;
        btn8 = "";
      });
    } else if (btn9 == "") {
      setState(() {
        btn9 = btn8;
        btn8 = "";
      });
    } else if (btn7 == "") {
      setState(() {
        btn7 = btn8;
        btn8 = "";
      });
    } else if (btn11 == "") {
      setState(() {
        btn11 = btn8;
        btn8 = "";
      });
    }
  }

  button9() {
    if (btn6 == "") {
      setState(() {
        btn6 = btn9;
        btn9 = "";
      });
    } else if (btn8 == "") {
      setState(() {
        btn8 = btn9;
        btn9 = "";
      });
    } else if (btn12 == "") {
      setState(() {
        btn12 = btn9;
        btn9 = "";
      });
    }
  }

  button10() {
    if (btn7 == "") {
      setState(() {
        btn7 = btn10;
        btn10 = "";
      });
    } else if (btn11 == "") {
      setState(() {
        btn11 = btn10;
        btn10 = "";
      });
    } else if (btn13 == "") {
      setState(() {
        btn13 = btn10;
        btn10 = "";
      });
    }
  }

  button11() {
    if (btn8 == "") {
      setState(() {
        btn8 = btn11;
        btn11 = "";
      });
    } else if (btn10 == "") {
      setState(() {
        btn10 = btn11;
        btn11 = "";
      });
    } else if (btn12 == "") {
      setState(() {
        btn12 = btn11;
        btn11 = "";
      });
    } else if (btn14 == "") {
      setState(() {
        btn14 = btn11;
        btn11 = "";
      });
    }
  }

  button12() {
    if (btn9 == "") {
      setState(() {
        btn9 = btn12;
        btn12 = "";
      });
    } else if (btn11 == "") {
      setState(() {
        btn11 = btn12;
        btn12 = "";
      });
    } else if (btn15 == "") {
      setState(() {
        btn15 = btn12;
        btn12 = "";
      });
    }
  }

  button13() {
    if (btn10 == "") {
      setState(() {
        btn10 = btn13;
        btn13 = "";
      });
    } else if (btn14 == "") {
      setState(() {
        btn14 = btn13;
        btn13 = "";
      });
    }
  }

  button14() {
    if (btn11 == "") {
      setState(() {
        btn11 = btn14;
        btn14 = "";
      });
    } else if (btn13 == "") {
      setState(() {
        btn13 = btn14;
        btn14 = "";
      });
    } else if (btn15 == "") {
      setState(() {
        btn15 = btn14;
        btn14 = "";
      });
    }
  }

  button15() {
    if (btn12 == "") {
      setState(() {
        btn12 = btn15;
        btn15 = "";
      });
    } else if (btn14 == "") {
      setState(() {
        btn14 = btn15;
        btn15 = "";
      });
    }
    if (btn1 == "1" &&
        btn2 == "2" &&
        btn3 == "3" &&
        btn4 == "4" &&
        btn5 == "5" &&
        btn6 == "6" &&
        btn7 == "7" &&
        btn8 == "8" &&
        btn9 == "9" &&
        btn10 == "10" &&
        btn11 == "11" &&
        btn12 == "") {
      showMessage();

      setState(() {
        isWin = 0;
      });
    }
  }

  showMessage() {
    // set up the AlertDialog
    AwesomeDialog(
      context: context,
      animType: AnimType.SCALE,
      dismissOnTouchOutside: false,
      dialogType: DialogType.SUCCES,
      body: Center(
        child: Text(
          'Congratulations!! You Won.!',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      title: 'This is Ignored',
      desc: 'This is also Ignored',
      btnOkOnPress: () {
        setState(() {
          isWin = 1;
          shuffleValue();
        });
      },
      btnOkText: "Play Again?",
      btnOkColor: Colors.orange,
    )..show();
  }

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
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Stack(
                  children: [
                    Container(
                      height: 80,
                      color: Color(0xff5f3b23),
                      child: Center(
                        child: Text("P U Z Z L E ",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      child: Container(
                        padding: EdgeInsets.only(top: 30, left: 32),
                        child: Text(
                          "Hard",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        width: 80,
                        height: 75,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/level.png"),
                        )),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                row1Buttons(),
                row2Buttons(),
                row3Buttons(),
                row4Buttons(),
                row5Buttons(),
                Spacer(),
                Container(
                    height: 60,
                    width: 120,
                    color: Color(0xff5f3b23),
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                        child: Text(
                          "Shuffle",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: shuffleValue)),
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
