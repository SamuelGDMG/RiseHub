import 'package:RiseArea/ResultsScreen.dart';
import 'package:RiseArea/login-screen.dart';

import 'package:flutter/material.dart';
import 'package:RiseArea/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'dart:io';
import 'package:flip_card/flip_card.dart';

Color palleteLightGrey = Color(0xffc4d1fa);
Color palleteLightBlue = Color(0xff829ef6);
Color palleteMediumBlue = Color(0xff3b66f1);
Color palleteBlue = Color(0xff1144e8);

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
                    Text(
                      'Lucas Carvalho',
                      style: TextStyle(
                        fontFamily: 'BellotaText',
                      ),
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
                            fontSize: 12.0,
                            color: Colors.limeAccent),
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
                  child: Text(
                    choice,
                    textAlign: TextAlign.center,
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 70.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '\t\t\tRealizar Teste',
                  style: TextStyle(
                      fontFamily: 'BellotaText',
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
              color: palleteLightBlue,
              child: Container(
                width: 400,
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Business Match',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontFamily: "BellotaText"),
                          ),
                          MaterialButton(
                            height: 58,
                            minWidth: 340,
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(12)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          new ResultsScreen()));
                            },
                            child: Text(
                              "Começar",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                              ),
                            ),
                            color: Colors.white,
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
                  '\t\t\tAtualizar Dados',
                  style: TextStyle(
                      fontFamily: "BellotaText",
                      color: Colors.black,
                      fontSize: 26.0),
                ),
              ],
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(
                  color: palleteBlue,
                  width: 1.0,
                ),
              ),
              color: palleteBlue,
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Container(
                width: 400,
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Ganhe XP atualizando as informações do seu negócio',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: "BellotaText"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: MaterialButton(
                        height: 58,
                        minWidth: 340,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(12)),
                        onPressed: () {},
                        child: Text(
                          "Iniciar",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                        color: Colors.white,
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
