import 'package:RiseHub/loading_screen.dart';
import 'package:flutter/material.dart';

var ano = TextEditingController();
var estado = TextEditingController();
var setor = TextEditingController();
var funcs = TextEditingController();

class QuestionsScreen extends StatefulWidget {
  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 42),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Questionário",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: "BellotaText",
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 45,
                margin: EdgeInsets.only(top: 12),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5)
                    ]),
                child: TextField(
                  controller: estado,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
                    hintText: 'Nome da empresa',
                    labelStyle: TextStyle(
                      fontFamily: "Quicksand",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 45,
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5)
                    ]),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: ano,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                    ),
                    hintText: 'Ano de fundação',
                    labelStyle: TextStyle(
                      fontFamily: "Quicksand",
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 45,
                margin: EdgeInsets.only(top: 12),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5)
                    ]),
                child: TextField(
                  controller: estado,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.assistant_photo,
                      color: Colors.grey,
                    ),
                    hintText: 'Estado de operação',
                    labelStyle: TextStyle(
                      fontFamily: "Quicksand",
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 45,
                margin: EdgeInsets.only(top: 12),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5)
                    ]),
                child: TextField(
                  controller: setor,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.assessment,
                      color: Colors.grey,
                    ),
                    hintText: 'Mercado',
                    labelStyle: TextStyle(
                      fontFamily: "Quicksand",
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 45,
                margin: EdgeInsets.only(top: 12),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5)
                    ]),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: funcs,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.people,
                      color: Colors.grey,
                    ),
                    hintText: 'Número de funcionários',
                    labelStyle: TextStyle(
                      fontFamily: "Quicksand",
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 45,
                margin: EdgeInsets.only(top: 12),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5)
                    ]),
                child: TextField(
                  controller: estado,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.person_pin_circle,
                      color: Colors.grey,
                    ),
                    hintText: 'Público Alvo',
                    labelStyle: TextStyle(
                      fontFamily: "Quicksand",
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 45,
                margin: EdgeInsets.only(top: 12),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5)
                    ]),
                child: TextField(
                  controller: estado,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.monetization_on,
                      color: Colors.grey,
                    ),
                    hintText: 'Modelo de receita',
                    labelStyle: TextStyle(
                      fontFamily: "Quicksand",
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 45,
                margin: EdgeInsets.only(top: 12),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5)
                    ]),
                child: TextField(
                  controller: estado,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.map,
                      color: Colors.grey,
                    ),
                    hintText: 'Localização',
                    labelStyle: TextStyle(
                      fontFamily: "Quicksand",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(height: 20),
              GestureDetector(
                child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          stops: [0.1, 1],
                          colors: [Colors.blue, Colors.blueAccent],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: FlatButton(
                        child: Text(
                          'Enviar'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Quicksand"),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new LoadingPage()));
                        })),
                onTap: () {
                  //iniciarProcessoCadastro();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
