import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:tatneft_quest/main/main_p.dart';
import 'package:tatneft_quest/travelPackage/shamsinur/shamsinur_quest.dart';
import 'package:tatneft_quest/ui/navigation/main_navigation.dart';
import 'package:tatneft_quest/ui/theme/app_colors.dart';

class QuestHistory extends StatefulWidget {
  @override
  _QuestHistoryState createState() => _QuestHistoryState();
}

class _QuestHistoryState extends State<QuestHistory> {
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
        children: <Widget>[
          Image.asset("images/cascade.jpg"),
          SizedBox(height: 10),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        "images/time.png",
                        height: 50,
                      )),
                  Flexible(
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Средняя продолжительность: 4 часа")))
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset("images/map.png", height: 50)),
                  Flexible(
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Количество точек на маршруте: 4")))
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset("images/points.png", height: 50)),
                  Flexible(
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Максимальное количество баллов: 0/24")))
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset("images/first.png", height: 50)),
                  Flexible(
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child:
                              Text("Первая точка на маршруте: Парк Шамсинур")))
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset("images/last.png", height: 50)),
                  Flexible(
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              "Последняя точка на маршруте: Городской парк")))
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset("images/time.png", height: 50)),
                  Flexible(
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              "Время затраченное на квест: 0 часов 0 минут 0 секунд")))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: AppColors.mainGreen,
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Карта",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  Flexible(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.red,
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, MainNavigationRouteNames.shamsinurQuestScreen);
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Начать квест",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ),
                  )),
                ],
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: RichText(
                    text: TextSpan(
                        text: 'Прекратить квест',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacementNamed(context, MainNavigationRouteNames.questHistoryScreen);;
                          }),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
