import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:shimmer/shimmer.dart';
import 'color_loader.dart';
import 'package:RiseArea/ResultsScreen.dart';


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
                    color1: Colors.green,
                    color2: Colors.yellow,
                    color3: Colors.blue,
                  ),
                ],
              ),
              SizedBox(width: 50.0, height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 15, width: 50.0,),
                  Container(
                    width: 400.0,
                    height: 180.0,
                    child: Shimmer.fromColors(
                      baseColor: Colors.green,
                      highlightColor: Colors.yellow,
                      child: Text(
                        loadingPhrases[i],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: "SpartanRegular",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
