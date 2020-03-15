import 'package:flutter/material.dart';
import 'package:RiseArea/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'dart:io';
import 'package:flip_card/flip_card.dart';

MyColors myColors = MyColors();
GlobalKey<FlipCardState> cardKey2 = GlobalKey<FlipCardState>();

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    List<Color> card_colors1 = [
      myColors.palleteBlue,
      myColors.palleteLightBlue,
      myColors.block2,
      myColors.block3,
      myColors.block4,
      myColors.block5,
      myColors.block6
    ];
    List<Color> card_colors2 = [
      myColors.block4,
      myColors.block5,
      myColors.block6,
      myColors.block1,
      myColors.block2,
      myColors.block3,
    ];

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: GradientAppBar(
          automaticallyImplyLeading: false,
          title: Row(
//          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/rocket4.png',
                fit: BoxFit.contain,
                height: 42,
              ),
              Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      Text('Lucas Carvalho',
                      style: TextStyle( fontFamily: 'BellotaText',),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          "XP: 150",
                          style: TextStyle(
                             fontFamily: 'BellotaText',
                              fontSize: 12.0, color: Colors.limeAccent),
                        ),
                      )
                    ],
                  ))
            ],
          ),
//        centerTitle: true,
          gradient: LinearGradient(
              colors: [myColors.palleteBlue, myColors.palleteMediumBlue]),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice, textAlign: TextAlign.center,),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: Container(
          color: Colors.blue,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '\t\t\tProgramação',
                    style: TextStyle(
                        fontFamily: 'CaviarDreamsBold',
                        color: Colors.black,
                        fontSize: 26.0),
                  ),
                ],
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 2,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Container(
                  width: 300,
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Coffee Break',
                              style:
                              TextStyle(color: Colors.white, fontSize: 30.0),
                            ),
                            Text(
                              '08:00 - 08:45',
                              style:
                              TextStyle(color: myColors.text, fontSize: 20.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 80.0, top: 42.0),
                              child: Text(
                                'Próximo: Apresentação dos Desafios',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '\t\t\tMentoria',
                    style: TextStyle(
                        fontFamily: 'CaviarDreamsBold',
                        color: Colors.black,
                        fontSize: 26.0),
                  ),
                ],
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                    color: Colors.red,
                    width: 1.0,
                  ),
                ),
                color: Colors.lightBlue,
                elevation: 2,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Container(
                  width: 400,
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                         "oi",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                              fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }

  void choiceAction(String choice) {
    if (choice == Constants.DarkMode) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text("Em breve"),
              content: new Text("Aguarde as próximas atualizações ;)"),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                new FlatButton(
                  child: new Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    } else if (choice == Constants.About) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text("Equipe 10"),
              content: InkWell(
                child: new Text(
                    "Samuel Santos\nAugusto Vesco\nCaio Pedroso\n\nGitRepo: https://github.com/SamuelGDMG/RiseArea"),
              ),
              //new Text(),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                new FlatButton(
                  child: new Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    } else if (choice == Constants.Exit) {
      exit(0);
    }
  }
}

class Constants {
  static const String DarkMode = 'Modo Noturno';
  static const String About = 'Sobre';
  static const String Exit = 'Sair';

  static const List<String> choices = <String>[DarkMode, About, Exit];
}
