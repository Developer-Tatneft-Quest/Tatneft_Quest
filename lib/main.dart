import 'package:flutter/material.dart';
import 'package:tatneft_quest/navigation_bar.dart';
import 'profile.dart';
import 'prizes.dart';
import 'questions.dart';
import 'help.dart';
import 'settings.dart';
import 'about_app.dart';
import 'quest.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int index=1;
  List<Widget>list=[
    Profile(),
    MainQuest(),
    Prizes(),
    Questions(),
    Help(),
    Settings(),
    AboutApp()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xB3000000),
          title: Image.asset('images/logo_for_slider.png', height: 50),
        ),
        body: list[index],
        drawer: NavigationBar(onTap: (ctx, i){
          setState((){
            index=i;
            Navigator.pop(ctx);
          });
        },),
      ),
    );
  }
}
