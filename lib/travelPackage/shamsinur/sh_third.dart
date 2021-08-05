import 'package:flutter/material.dart';
import 'package:tatneft_quest/travelPackage/healthy/healthy_quest.dart';
import 'package:tatneft_quest/main/main_p.dart';
import 'package:tatneft_quest/ui/navigation/main_navigation.dart';

class ShamsinurThirdPointWidget extends StatefulWidget {
  @override
  _ShamsinurThirdPointWidgetState createState() =>
      _ShamsinurThirdPointWidgetState();
}

class _ShamsinurThirdPointWidgetState extends State<ShamsinurThirdPointWidget> {
  bool change1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacementNamed(context, MainNavigationRouteNames.mainP);
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.black54,
        title: Image.asset('images/logo_for_slider.png', height: 50),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: <Widget>[
          Text("Точка №1"),
          Text("Вопрос 3/3"),
          Text("Где состоялось торжественное открытие парка?"),
          Text("Выберите правильный ответ:"),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 1,
                  primary: change1 ? Color(0xff00a85d) : Colors.white,
                ),
                onPressed: () => setState(() => change1 = !change1),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Text("в амфитеатре"),
                ),
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 1,
                  primary: change1 ? Color(0xff00a85d) : Colors.white,
                ),
                onPressed: () => setState(() => change1 = !change1),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Text("в драмтеатре"),
                ),
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 1,
                  primary: change1 ? Color(0xff00a85d) : Colors.white,
                ),
                onPressed: () => setState(() => change1 = !change1),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Text("в ДК Нефтьче"),
                ),
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.red,
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, MainNavigationRouteNames.healthyQuestScreen);
                },
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Ответить",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
              )),
        ],
      ),
    );
  }
}
