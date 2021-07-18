import 'package:flutter/material.dart';
import 'package:tatneft_quest/cascade/cascade_quest.dart';
import 'package:tatneft_quest/cascade/cs_third.dart';
import 'package:tatneft_quest/main_p.dart';
import 'package:tatneft_quest/quest_history.dart';

class CThird extends StatefulWidget {

  @override
  _CThirdState createState() => _CThirdState();
}

class _CThirdState extends State<CThird> {

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
          Text("Точка №4"),
          Text("Вопрос 3/3"),
          Text("Как называется номинация, в который \"Городской парк\" ставится трехкратным победителем?"),
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
                  Text("Лучший парк республики"),
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
                  Text("Поющий фонтан"),
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
                  Text("Хрустальное колесо"),
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
                        return QuestHistory();
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