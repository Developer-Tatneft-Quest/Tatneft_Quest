import 'package:flutter/material.dart';
import 'package:tatneft_quest/navigation_bar.dart';
import 'package:tatneft_quest/quest_history.dart';
import 'profile.dart';
import 'prizes.dart';
import 'questions.dart';
import 'help.dart';
import 'settings.dart';
import 'about_app.dart';
import 'quest.dart';
import 'package:flutter/services.dart';
import 'quest_history.dart';

class MainP extends StatefulWidget {
  @override
  _MainPState createState() => _MainPState();
}

class _MainPState extends State<MainP> {
  int index = 1;
  List<Widget> list = [
    Profile(),
    Quest(),
    Prizes(),
    Questions(),
    Help(),
    Settings(),
    AboutApp(),
    QuestHistory()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //шапка
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xB3000000),
        title: Image.asset('images/logo_for_slider.png', height: 50),
      ),
      //тело приложения
      body: list[index],
      //навигационная панель
      drawer: NavigationBar(
        onTap: (ctx, i) {
          setState(() {
            index = i;
            Navigator.pop(ctx);
          });
        },
      ),
    );
  }
}
