import 'package:flutter/material.dart';

class PrizesWidget extends StatefulWidget {
  @override
  _PrizesWidgetState createState() => _PrizesWidgetState();
}

class _PrizesWidgetState extends State<PrizesWidget> {
  bool change1 = false;
  bool change2 = false;
  bool change3 = false;
  bool change4 = false;
  bool change5 = false;
  bool change6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        Text(
            "Выберите приз от ПАО Татнефть в зависимости от количества заработанных баллов"),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Flexible(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  primary: change1 ? Color(0xff00a85d) : Colors.white,
                ),
                // выбор цвета от метода
                onPressed: () => setState(() => change1 = !change1),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/pen.png",
                        height: 100,
                        width: 100,
                      ),
                      Text("150 баллов- фирменная ручка"),
                    ],
                  ),
                ),
              ),
            )),
            SizedBox(
              width: 10,
            ),
            Flexible(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  primary: change2 ? Color(0xff00a85d) : Colors.white,
                ),
                onPressed: () => setState(() => change2 = !change2),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/tshort.png",
                        height: 100,
                        width: 100,
                      ),
                      Text("175 баллов- футболка"),
                    ],
                  ),
                ),
              ),
            )),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Flexible(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  primary: change3 ? Color(0xff00a85d) : Colors.white,
                ),
                onPressed: () => setState(() => change3 = !change3),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/cap.png",
                        height: 100,
                        width: 100,
                      ),
                      Text("200 баллов- фирменная бейсболка"),
                    ],
                  ),
                ),
              ),
            )),
            SizedBox(
              width: 10,
            ),
            Flexible(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  primary: change4 ? Color(0xff00a85d) : Colors.white,
                ),
                onPressed: () => setState(() => change4 = !change4),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/tatneft_card.png",
                        height: 100,
                        width: 100,
                      ),
                      Text("250 баллов- топливаня карта"),
                    ],
                  ),
                ),
              ),
            )),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Flexible(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  primary: change5 ? Color(0xff00a85d) : Colors.white,
                ),
                onPressed: () => setState(() => change5 = !change5),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/power_bank.png",
                        height: 100,
                        width: 100,
                      ),
                      Text("275 баллов- Power Bank"),
                    ],
                  ),
                ),
              ),
            )),
            SizedBox(
              width: 10,
            ),
            Flexible(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  primary: change6 ? Color(0xff00a85d) : Colors.white,
                ),
                onPressed: () => setState(() => change6 = !change6),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/backpack.png",
                        height: 100,
                        width: 100,
                      ),
                      Text("300 баллов- рюкзак"),
                    ],
                  ),
                ),
              ),
            )),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Flexible(
                child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(4),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.red,
                ),
                onPressed: () {},
                child: Text("Мои подарки",
                    style: TextStyle(color: Colors.white, fontSize: 12.0)),
              ),
            )),
            SizedBox(width: 10),
            Flexible(
                child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(4),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.red,
                ),
                onPressed: () {},
                child: Text("Получить подарок",
                    style: TextStyle(color: Colors.white, fontSize: 12.0)),
              ),
            ))
          ],
        ),
      ],
    ));
  }
}
