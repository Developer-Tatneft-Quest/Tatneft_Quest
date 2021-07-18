import 'package:flutter/material.dart';
import 'package:tatneft_quest/main_p.dart';
import 'package:tatneft_quest/shamsinur/sh_third.dart';

class ShSecond extends StatefulWidget {

  @override
  _ShSecondState createState() => _ShSecondState();
}

class _ShSecondState extends State<ShSecond> {

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
          Text("Точка №1"),
          Text("Вопрос 2/3"),
          Text("Сколько выделяют \"групп мышц\" в парке Шамсинур?"),
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
                  Text("7"),
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
                  Text("6"),
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
                  Text("5"),
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
                        return ShThird();
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