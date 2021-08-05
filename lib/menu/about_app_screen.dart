import 'package:flutter/material.dart';

class AboutAppWidget extends StatefulWidget {
  @override
  _AboutAppWidgetState createState() => _AboutAppWidgetState();
}

class _AboutAppWidgetState extends State<AboutAppWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          //ширина на весь размер
          width: MediaQuery.of(context).size.width,
          color: Color(0xff0ba374),
          child: Padding(
            //отступы
            padding: EdgeInsets.all(20),
            child: Column(
              //выравнивание по центру-вертикали
              mainAxisAlignment: MainAxisAlignment.center,
              //выравнивание по центру-горизонтали
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Tatneft Quest",
                  //стиль текста
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text("Версия 1.0.15"),
                Container(
                  padding: EdgeInsets.all(10),
                  //декорирование виджета
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //округление
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("images/start_screen.png", height: 150),
                ),
                Text(
                  "© 2021 студенты",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "\"Альметьевского политехнического техникума\"",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
