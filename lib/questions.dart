import 'package:flutter/material.dart';

class Questions extends StatefulWidget {

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/round.png",height: 150),
              Text("СТРАНИЦА НАХОДИТСЯ В РАЗРАБОТКЕ"),
              Text("С уважением Tatneft Quest"),
            ],
          ),
        )
    );
  }
}
