import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:tatneft_quest/firstScreen/authorizationWidget/authorization_screen.dart';
import 'package:tatneft_quest/ui/theme/app_colors.dart';

class RestorePasswordWidget extends StatefulWidget {
  @override
  _RestorePasswordWidgetState createState() => _RestorePasswordWidgetState();
}

class _RestorePasswordWidgetState extends State<RestorePasswordWidget> {
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
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: AppColors.mainGreen,
                ),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Восстановить",
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  text: 'Вернуться назад',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return AuthorizationWidget();
                      }));
                    }),
            )
          ],
        ),
      ),
    );
  }
}
