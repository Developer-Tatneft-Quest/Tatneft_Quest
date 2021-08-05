import 'package:flutter/material.dart';
import 'package:tatneft_quest/travelPackage/healthy/h_second.dart';
import 'package:tatneft_quest/main/main_p.dart';
import 'package:tatneft_quest/ui/navigation/main_navigation.dart';

class HealthyFirstPointWidget extends StatefulWidget {
  @override
  _HealthyFirstPointWidgetState createState() =>
      _HealthyFirstPointWidgetState();
}

class _HealthyFirstPointWidgetState extends State<HealthyFirstPointWidget> {
  bool change1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacementNamed(
                context, MainNavigationRouteNames.mainP);
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.black54,
        title: Image.asset('images/logo_for_slider.png', height: 50),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: <Widget>[
          Text("Точка №2"),
          Text("Вопрос 1/3"),
          Text(
              "В какой день произошло торжественное открытие парка \"Здоровья\"?"),
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
                  child: Text("2 сентября 2018"),
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
                  child: Text("31 августа 2018"),
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
                  child: Text("7 сентября 2018"),
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
                  Navigator.pushReplacementNamed(context,
                      MainNavigationRouteNames.healthySecondPointScreen);
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
