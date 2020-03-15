import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ResultsScreen extends StatefulWidget {
  @override
  _ResultsScreenState createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final String imgUrl =
        'https://cdn.startupbase.com.br/uploads/startups/2019/03/11911-d7e83a50e6a57a7c8d31caf75afcc372fb7624eb.opt.png';

    return new Stack(
      children: <Widget>[
        new Container(
          color: Colors.white,
        ),
        new Image.network(
          imgUrl,
          fit: BoxFit.fill,
        ),
        new BackdropFilter(
            filter: new ui.ImageFilter.blur(
              sigmaX: 6.0,
              sigmaY: 6.0,
            ),
            child: new Container(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.9),
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
            )),
        new Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              "Resultado",
              style: TextStyle(fontFamily: "BellotaText"),
            ),
            leading: BackButton(
              color: Colors.black,
            ),
          ),
          body: new Center(
            child: new Column(
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child:
                    Text(
                      "Sua cara metade é:",
                      style: TextStyle(
                        fontFamily: "BellotaText",
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    ),
                  ],
                ),
                new SizedBox(
                  height: _height / 16,
                ),
                new CircleAvatar(
                  radius: _width < _height ? _width / 4 : _height / 4,
                  backgroundImage: NetworkImage(imgUrl),
                ),
                new SizedBox(
                  height: _height / 25.0,
                ),
                new Text(
                  'Delta Cars',
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: _width / 15,
                      color: Colors.white),
                ),
                new Padding(
                  padding: new EdgeInsets.only(
                      top: _height / 30, left: _width / 8, right: _width / 8),
                  child: new Text(
                    'Mercado: Automobilístico\nMomento: Ideação\nPúblico: B2B2C',
                    style: new TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: _width / 25,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                new Divider(
                  height: _height / 30,
                  color: Colors.white,
                ),
                new Container(
                  color: Colors.redAccent,
                  child: Row(
                    children: <Widget>[
                      rowCell("88%", ' MATCH'),
                      rowCell("Ano de fundação", '2018'),
                      rowCell("Funcionários", '5'),
                    ],
                  ),
                ),
                new Divider(height: _height / 30, color: Colors.white),
                new Padding(
                  padding:
                      new EdgeInsets.only(left: _width / 8, right: _width / 8),
                  child: new FlatButton(
                    onPressed: () {},
                    child: new Container(
                        child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(Icons.insert_drive_file),
                        new SizedBox(
                          width: _width / 30,
                        ),
                        new Text('Visualizar detalhes')
                      ],
                    )),
                    color: Colors.blue[50],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget rowCell(String count, String type) => new Expanded(
          child: new Column(
        children: <Widget>[
          new Text(
            '$count',
            style: new TextStyle(color: Colors.white),
          ),
          new Text(type,
              style: new TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal))
        ],
      ));
}
