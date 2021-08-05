import 'package:flutter/material.dart';
import 'package:tatneft_quest/ui/navigation/main_navigation.dart';
import 'package:tatneft_quest/ui/theme/app_colors.dart';
import 'package:tatneft_quest/travelPackage/quest_history_screen.dart';

class StartActionWidget extends StatefulWidget {
  @override
  _StartActionWidgetState createState() => _StartActionWidgetState();
}

class _StartActionWidgetState extends State<StartActionWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    //контроллер для виджета таб бар
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: <Widget>[
      Container(
          color: AppColors.mainGreen,
          child: TabBar(
            unselectedLabelColor: Color(0xffffffff),
            indicatorColor: Colors.black,
            labelColor: Colors.white,
            //применение контроллера
            controller: _tabController,
            // перечисление табов
            tabs: <Widget>[Tab(text: "Квест"), Tab(text: "Экскурсия")],
          )),
      Expanded(
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            ListView(
              padding: EdgeInsets.all(10),
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, MainNavigationRouteNames.questHistoryScreen);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Квест по истории города Альметьевск",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Рейтинг:",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      "*****",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Container(
                                  child: Text(
                                    "Данный квест позволит познакомиться с городом в интересной и захватывающей форме",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Flexible(
                            child: Image.asset(
                              "images/city_park.jpg",
                            ),
                          )
                        ],
                      )),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Квест по компании Татнефть имени В. Д. Шашина",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: <Widget>[
                                    Text("Рейтинг:", style: TextStyle(color: Colors.black)),
                                    Text("*****", style: TextStyle(color: Colors.black)),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Container(
                                  child: Text(
                                      "Данный квест позволит познакомиться с компанией и узнать ее главные достижения", style: TextStyle(color: Colors.black)),
                                )
                              ],
                            ),
                          ),
                          Flexible(
                            child: Image.asset(
                              "images/cascade.jpg",
                            ),
                          )
                        ],
                      )),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Квест по ресурсосбережению",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: <Widget>[
                                    Text("Рейтинг:", style: TextStyle(color: Colors.black)),
                                    Text("*****", style: TextStyle(color: Colors.black)),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Container(
                                  child: Text(
                                      "Данный квест позволит вам узнать о разных способах ресурсосбережения", style: TextStyle(color: Colors.black)),
                                )
                              ],
                            ),
                          ),
                          Flexible(
                            child: Image.asset(
                              "images/park_healthy.jpg",
                            ),
                          )
                        ],
                      )),
                ),
                SizedBox(height: 10),
              ],
            ),
            Container(
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
            )
          ],
        ),
      )
    ])));
  }
}
