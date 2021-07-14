import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                maxLength: 50,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Заголовок проблемы',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                maxLength: 255,
                minLines: 1,
                maxLines: 8,
                keyboardType: TextInputType.text,
                //This will obscure text dynamically
                decoration: InputDecoration(
                  hintText: 'Опишите проблему',
                ),
              ),
            ),
            Container(
              child: RaisedButton(
                elevation: 0,
                onPressed: () {},
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Сообщить о проблеме",
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
