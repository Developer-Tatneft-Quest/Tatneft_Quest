import 'package:flutter/material.dart';

class AboutApp extends StatefulWidget {

  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
        color: Color(0xff00a85d),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Tatneft Quest",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              Text("Версия 1.0.15"),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset("images/start_screen.png",height: 150),
              ),
              Text("© 2021 студенты \"Альметьевского политехнического техникума\""),
            ],
          ),
        )
      ),
    );
  }
}
