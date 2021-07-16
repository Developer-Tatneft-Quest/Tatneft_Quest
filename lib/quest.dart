import 'package:flutter/material.dart';
import 'package:tatneft_quest/quest_history.dart';

class Quest extends StatefulWidget {
  @override
  _QuestState createState() => _QuestState();
}

class _QuestState extends State<Quest> with SingleTickerProviderStateMixin {
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
        body: Column(children: <Widget>[
      Container(
          color: Color(0xB3000000),
          child: TabBar(
            unselectedLabelColor: Color(0xffffffff),
            indicatorColor: Color(0xff00a85d),
            labelColor: Color(0xff00a85d),
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
                RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return QuestHistory();
                    }));
                  },
                  color: Colors.white,
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
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: <Widget>[
                                    Text("Рейтинг:"),
                                    Text("*****"),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Container(
                                  child: Text(
                                      "Данный квест позволит познакомиться с городом в интересной и захватывающей форме"),
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                SizedBox(height: 10),
                RaisedButton(
                  elevation: 5,
                  onPressed: () {},
                  color: Colors.white,
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
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: <Widget>[
                                    Text("Рейтинг:"),
                                    Text("*****"),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Container(
                                  child: Text(
                                      "Данный квест позволит познакомиться с компанией и узнать ее главные достижения"),
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                SizedBox(height: 10),
                RaisedButton(
                  elevation: 5,
                  onPressed: () {},
                  color: Colors.white,
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
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: <Widget>[
                                    Text("Рейтинг:"),
                                    Text("*****"),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Container(
                                  child: Text(
                                      "Данный квест позволит вам узнать о разных способах ресурсосбережения"),
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
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
    ]));
  }
}
