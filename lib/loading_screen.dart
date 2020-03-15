import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';
import 'color_loader.dart';
import 'package:RiseHub/ResultsScreen.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 8)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ResultsScreen()));
    });
  }

  List<String> loadingPhrases = [
    'Fetching our database...',
    'Analyzing your data...',
    'Matching similar business...',
    'Ready!'
  ];
  int i = -1;

  void increaseCounter() {
    i++;
  }

  @override
  Widget build(BuildContext context) {
    return TimerBuilder.periodic(Duration(seconds: 2), builder: (context) {
      if (i < 3) {
        increaseCounter();
      }
      return Scaffold(
        body: Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ColorLoader2(
                    color1: Colors.blue,
                    color2: Colors.red,
                    color3: Colors.black,
                  ),
                ],
              ),
              SizedBox(width: 50.0, height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        loadingPhrases[i],
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 24,
                          fontFamily: "BellotaText",
                        ),
                      ),
                    ],
                  ),
            ],
          ),
        ),
      );
    });
  }
}
/*
ColorLoader2(
                color1: Colors.green,
                color2: Colors.yellow,
                color3: Colors.blue,
              )*/
