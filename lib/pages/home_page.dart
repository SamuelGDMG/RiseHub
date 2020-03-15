import 'package:flutter/material.dart';
import 'package:Business_Monsters/utils/colors.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
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
    List<String> title1 = [
      "\t\t\t\t\t\tMindset Empreendedor",
      "UX/UI",
      "Pessoas",
      "Finanças",
      "Marketing",
      "Finanças"
    ];
    List<String> title2 = [
      "Business",
      "Marketing",
      "Tecnologia",
      "Missão 0",
      "UX/UI",
      "Business"
    ];

    List<String> desc = ["0/22", "0/53", "0/42", "0/30", "0/61", "0/34"];
    List<String> desc2 = ["0/30", "0/61", "0/34", "0/20", "0/53", "0/42"];

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
          child: Container
            (
              margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 54.0),
              child: Material
                (
                elevation: 8.0,
                color: Colors.black,
                borderRadius: BorderRadius.circular(32.0),
                child: InkWell
                  (
                  onTap: () {},
                  child: Padding
                    (
                    padding: EdgeInsets.all(12.0),
                    child: Row
                      (
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        Icon(Icons.add, color: Colors.white),
                        Padding(padding: EdgeInsets.only(right: 16.0)),
                        Text('ADD A ITEM', style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
              )
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
