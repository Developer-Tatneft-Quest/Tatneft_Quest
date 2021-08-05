import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  String familia;
  String name;
  String otchestvo;
  String city;
  String email;
  String phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          ClipOval(
            child: Image.asset(
              'images/icon4.png',
              width: 90,
              height: 90,
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 0,
                      child: Text("Фамилия: ",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(child: Text('$familia'))
                ],
              )),
          Divider(),
          Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 0,
                      child: Text("Имя: ",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(child: Text('$name'))
                ],
              )),
          Divider(),
          Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 0,
                      child: Text("Отчество: ",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(child: Text('$otchestvo'))
                ],
              )),
          Divider(),
          Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 0,
                      child: Text("Город: ",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(child: Text("$city"))
                ],
              )),
          Divider(),
          Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 0,
                      child: Text("Электронная почта: ",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(child: Text("$email"))
                ],
              )),
          Divider(),
          Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 0,
                      child: Text("Номер телефона: ",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(child: Text("$phone"))
                ],
              )),
        ],
      ),
    ));
  }
}
