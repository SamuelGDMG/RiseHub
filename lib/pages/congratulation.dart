import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:RiseHub/home.dart';

Color palleteLightGrey = Color(0xffc4d1fa);
Color palleteLightBlue = Color(0xff829ef6);
Color palleteMediumBlue = Color(0xff3b66f1);
Color palleteBlue = Color(0xff1144e8);


class Congratulations extends StatefulWidget {
  Congratulations({Key key}) : super(key: key);

  @override
  _CongratulationsState createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1080, height: 1860, allowFontScaling: false);
    return Scaffold(
        backgroundColor: Color(0xFFF1F3F6),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(100)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: ScreenUtil().setHeight(80),
                          ),
                          Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 50, 0 ),
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
                                                alignment: Alignment.centerRight,
                                                image: new ExactAssetImage(
                                                    'assets/party.png',
                                                    scale: 1.5
                                                ),
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Center(
                                    child: Text('PARABÉNS!',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: palleteMediumBlue,
                                          fontFamily: 'BellotaText',
                                          fontSize: 40
                                      ),
                                    ),
                                  ),

                                ],
                              )
                          ),


                          SizedBox(height: 25),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column (
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        constraints: BoxConstraints.expand(
                              height: 250.0,
                            ),
                                        decoration: BoxDecoration(
                                image: new DecorationImage(
                                  alignment: Alignment.centerLeft,
                              image: new ExactAssetImage(
                                'images/rocket3.png',
                                scale: 1.5
                              ),
                                      )
                                        ),
                                        )],
                                  )
                                  ),
                                  new Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 50, 0 ),
                                     child: Text('+50 XP',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 40
                            ),
                            ),
                                    ),
                              ],
                            )
                          ),

                          Text(
                              'Agora você está pronto para começar a construir seu foguete!\nRealize o teste e atualize dados para ganhar XP e adquirir benefícios.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: palleteMediumBlue,
                                fontFamily: 'BellotaText',
                              )),

                          SizedBox(height: 20),
                          GestureDetector(
                     onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) => Home()));
                      },
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        height: ScreenUtil().setHeight(120),
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color: Color(0xFFF1F3F6),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                              gradient: LinearGradient(
                           colors: [palleteLightBlue, palleteBlue]),
                            ),
                        child: Text(
                          "IR PARA CONTEÚDO",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16, fontFamily: 'BellotaText',),
                        ),
                      ),
                    ),
                        ])))));
  }
}
