import 'dart:ui';

import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            //расположение по центру
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 50.0, bottom: 55.0),
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Image.asset(
                    'images/logo_slider.png',
                    height: 200,
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Center(
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      // круглый прогресс бар
                      child: CircularProgressIndicator(
                        valueColor: new AlwaysStoppedAnimation<Color>(
                            Color(0xff00a85d)),
                        strokeWidth: 5,
                      ),
                    ),
                  ),
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
            )));
  }
}
