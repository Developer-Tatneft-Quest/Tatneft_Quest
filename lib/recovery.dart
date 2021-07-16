import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:tatneft_quest/log_in.dart';

class Recovery extends StatefulWidget {
  @override
  _RecoveryState createState() => _RecoveryState();
}

class _RecoveryState extends State<Recovery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Введите электронную почту',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
              child: RaisedButton(
                elevation: 0,
                onPressed: () {},
                color: Color(0xff00a85d),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Восстановить",
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                  text: 'Вернуться назад',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return LogIn();
                      }));
                    }),
            )
          ],
        ),
      ),
    );
  }
}
