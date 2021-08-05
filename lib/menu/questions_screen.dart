import 'package:flutter/material.dart';

class QuestionsWidget extends StatefulWidget {
  @override
  _QuestionsWidgetState createState() => _QuestionsWidgetState();
}

class _QuestionsWidgetState extends State<QuestionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("images/round.png", height: 150),
          Text("СТРАНИЦА НАХОДИТСЯ В РАЗРАБОТКЕ"),
          Text("С уважением Tatneft Quest"),
        ],
      ),
    ));
  }
}
