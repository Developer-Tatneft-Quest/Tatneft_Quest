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
          // пространство для виджетов распределено одинаково
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              //виджет текстовый редактор
              child: TextFormField(
                //макс кол-во символов
                maxLength: 50,
                //тип вводимых символов
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
                //минимальное кол-во строк
                minLines: 1,
                //максимальное кол-во строк
                maxLines: 8,
                keyboardType: TextInputType.text,
                //This will obscure text dynamically
                decoration: InputDecoration(
                  hintText: 'Опишите проблему',
                ),
              ),
            ),
            Container(
              //кнопка
              child: RaisedButton(
                //тени
                elevation: 0,
                //метод при нажатии
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
