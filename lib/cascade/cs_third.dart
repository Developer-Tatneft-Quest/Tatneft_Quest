import 'package:flutter/material.dart';
import 'package:tatneft_quest/cascade/cascade_quest.dart';
import 'package:tatneft_quest/cascade/cs_third.dart';
import 'package:tatneft_quest/city/city_quest.dart';
import 'package:tatneft_quest/main_p.dart';
import 'package:tatneft_quest/quest_history.dart';

class CsThird extends StatefulWidget {

  @override
  _CsThirdState createState() => _CsThirdState();
}

class _CsThirdState extends State<CsThird> {

  bool change1=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                  return MainP();
                }));
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.black54,
        title: Image.asset('images/logo_for_slider.png', height: 50),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        children: <Widget>[
          Text("Точка №3"),
          Text("Вопрос 3/3"),
          Text("Когда состоялось открытие парка \"Каскад прудов\"?"),
          Text("Выберите правильный ответ:"),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3,horizontal: 0),
              child:RaisedButton(
                elevation: 1,
                color: change1 ? Color(0xff00a85d) : Colors.white,
                onPressed: () => setState(() => change1 = !change1),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child:
                  Text("2 сентября 2017 года"),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3,horizontal: 0),
              child:RaisedButton(
                elevation: 1,
                color: change1 ? Color(0xff00a85d) : Colors.white,
                onPressed: () => setState(() => change1 = !change1),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child:
                  Text("6 сентября 2017 года"),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3,horizontal: 0),
              child:RaisedButton(
                elevation: 1,
                color: change1 ? Color(0xff00a85d) : Colors.white,
                onPressed: () => setState(() => change1 = !change1),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child:
                  Text("3 сентября 2017 года"),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3,horizontal: 20),
              child:RaisedButton(
                elevation: 0,
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                        return CityQuest();
                      }));},
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Ответить",
                      style:
                      TextStyle(color: Colors.white,)),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              )),
        ],
      ),
    );
  }
}