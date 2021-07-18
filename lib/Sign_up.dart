import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:tatneft_quest/log_in.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Регистрация",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          ClipOval(
            child: Image.asset(
              'images/icon4.png',
              width: 90,
              height: 90,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Фамилия',
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
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Имя',
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
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Отчество',
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
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Город',
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
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Электронная почта',
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
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Номер телефона',
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
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Логин',
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
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Пароль',
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
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Подтвердите пароль',
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
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: RaisedButton(
              elevation: 0,
              onPressed: () {},
              color: Color(0xff00a85d),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("Зарегистрироваться",
                    style: TextStyle(color: Colors.white)),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  text: 'Уже зарегистрированы?/Войти',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return LogIn();
                      }));
                    }),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
