import 'package:flutter/material.dart';
import 'package:tatneft_quest/log_in.dart';
import 'package:tatneft_quest/main_p.dart';
import 'package:tatneft_quest/navigation_bar.dart';
import 'package:tatneft_quest/start_page.dart';
import 'profile.dart';
import 'prizes.dart';
import 'questions.dart';
import 'help.dart';
import 'settings.dart';
import 'about_app.dart';
import 'quest.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //убирает верхнюю шапку телефона
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return FutureBuilder(
      //время отображения сплеш скрина
      future: Future.delayed(Duration(seconds: 1)),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
              //убирает баннер флаттера
              debugShowCheckedModeBanner: false,
              theme: ThemeData(),
              title: "Название",
              home: StartPage());
        } else {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Название",
              home: LogIn(),
              theme: ThemeData());
        }
      },
    );
  }
}
