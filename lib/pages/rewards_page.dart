
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color palleteLightGrey = Color(0xffc4d1fa);
Color palleteLightBlue = Color(0xff829ef6);
Color palleteMediumBlue = Color(0xff3b66f1);
Color palleteBlue = Color(0xff1144e8);

class BenefitsPage extends StatefulWidget {
  BenefitsPage({Key key}) : super(key: key);

  @override
  _BenefitsPage createState() => _BenefitsPage();
}

class _BenefitsPage extends State<BenefitsPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1080, height: 1860, allowFontScaling: false);
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(120)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: ScreenUtil().setHeight(50),
                    ),
                    Center(
                      child: Text(
                        "RiseHub",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'BellotaText',
                          color: palleteMediumBlue,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
),
                      TextField(
                      style: TextStyle(color: palleteMediumBlue),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: palleteMediumBlue,
                                width: 2),
                          ),
                          labelText: "Pesquisar",
                          labelStyle: TextStyle(
                            fontFamily: 'BellotaText',
                              color: palleteMediumBlue,
                              fontSize: 14)),
                    ),
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          color: palleteMediumBlue,
                          onPressed: () {}, 
                          child: Text(
                            'Buscar',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontFamily: 'BellotaText'),
                            )
                          )
                      ],
                    ),
                    SizedBox(height: 20,),
                      Row(
                        children: <Widget>[
                          Text(
                            "Benefícios",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'BellotaText',
                              color: palleteMediumBlue,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow( // bottomLeft
                                  offset: Offset(-2.5, -2.5),
                                  color: Colors.white,
                                ),
                                Shadow( // bottomRight
                                    offset: Offset(-2.5, -2.5),
                                    color: Colors.white
                                ),
                                Shadow( // topRight
                                    offset: Offset(2.5, 2.5),
                                    color: Colors.white
                                ),
                                Shadow( // topLeft
                                    offset: Offset(-2.5, 2.5),
                                    color: Colors.white
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: .5, color: Colors.black),

                        Container(
                            color: Color.fromRGBO(243, 245, 248, 1),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column (
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        constraints: BoxConstraints.expand(
                              height: 100.0,
                            ),
                                        decoration: BoxDecoration(
                                image: new DecorationImage(
                                  alignment: Alignment.centerLeft,
                              image: new ExactAssetImage(
                                'images/beneficios-aws.jpg',
                              ),
                                      )
                                        ),
                                        )],
                                  )
                                  ),
                                  new Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0 ),
                                     child: Text('Aws \n US\$2.000,00 dólares\nem crédito válido\npor 2 anos!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'BellotaText',
                              color: palleteMediumBlue,
                              fontSize: 12
                            ),
                            ),
                                    ),
                          Padding(
                           padding: EdgeInsets.fromLTRB(0, 0, 10, 0 ),
                          child:
                          FlatButton(
                          color: palleteBlue,
                          onPressed: () {}, 
                          child: Text(
                            'Comprar \n 970 XP',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontFamily: 'BellotaText',),
                            )
                          )
                          )
                              ],
                            )
                          ),

                        SizedBox(height: 20),
                        
                        Container(
                            color: Color.fromRGBO(243, 245, 248, 1),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column (
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        constraints: BoxConstraints.expand(
                              height: 100.0,
                            ),
                                        decoration: BoxDecoration(
                                image: new DecorationImage(
                                  alignment: Alignment.centerLeft,
                              image: new ExactAssetImage(
                                'images/beneficios-trello.jpg',
                              ),
                                      )
                                        ),
                                        )],
                                  )
                                  ),
                                  new Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0 ),
                                     child: Text('Trello\n6 meses free no\nTrello Gold!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'BellotaText',
                              color: palleteMediumBlue,
                              fontSize: 12
                            ),
                            ),
                                    ),
                          Padding(
                           padding: EdgeInsets.fromLTRB(0, 0, 10, 0 ),
                          child:
                          FlatButton(
                          color: palleteBlue,
                          onPressed: () {}, 
                          child: Text(
                            'Comprar \n500 XP',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontFamily: 'BellotaText',),
                            )
                          )
                          )
                              ],
                            )
                          ),

                        SizedBox(height: 20),

                       Container(
                           color: Color.fromRGBO(243, 245, 248, 1),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column (
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        constraints: BoxConstraints.expand(
                              height: 100.0,
                            ),
                                        decoration: BoxDecoration(
                                image: new DecorationImage(
                                  alignment: Alignment.centerLeft,
                              image: new ExactAssetImage(
                                'images/beneficios-contaazul.jpg',
                                scale: 1.0
                              ),
                                      )
                                        ),
                                        )],
                                  )
                                  ),
                                  new Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0 ),
                                     child: Text('ContaAzul\n 6 meses de plano\nmicro grátis!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'BellotaText',
                              color: palleteMediumBlue,
                              fontSize: 12
                            ),
                            ),
                                    ),
                          Padding(
                           padding: EdgeInsets.fromLTRB(0, 0, 20, 0 ),
                          child:
                          FlatButton(
                          color: palleteBlue,
                          onPressed: () {}, 
                          child: Text(
                            'Comprar \n 650XP',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontFamily: 'BellotaText',),
                            )
                          )
                          )
                              ],
                            )
                          ),

])))));
  }
}
