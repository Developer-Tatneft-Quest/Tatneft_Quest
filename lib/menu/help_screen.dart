import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpWidget extends StatefulWidget {
  @override
  _HelpWidgetState createState() => _HelpWidgetState();
}

class _HelpWidgetState extends State<HelpWidget> {
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
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.red,
                ),
                //метод при нажатии
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Сообщить о проблеме",
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
