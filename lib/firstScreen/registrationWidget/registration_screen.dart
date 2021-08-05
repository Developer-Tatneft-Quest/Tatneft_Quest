import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tatneft_quest/firstScreen/authorizationWidget/authorization_screen.dart';
import 'package:tatneft_quest/ui/navigation/main_navigation.dart';
import 'package:tatneft_quest/ui/theme/app_colors.dart';

class RegistrationWidget extends StatefulWidget {
  @override
  _RegistrationWidgetState createState() => _RegistrationWidgetState();
}

String _lastName;
String _name;
String _patronymic;
String _city;
String _mail;
String _number;
String _login;
String _password;
String _repeatPassword;

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

Widget _buildLastName() {
  return TextFormField(
    validator: (String value) {
      if (value.isEmpty) {
        return "Заполните пустое поле";
      }
      return null;
    },
    onSaved: (String value) {
      _lastName = value;
    },
    decoration: InputDecoration(
      focusColor: AppColors.mainGreen,
      icon: Icon(Icons.person, color: Colors.grey),
      labelText: 'Фамилия',
      border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5.0))),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: AppColors.mainGreen, width: 2),
      ),
    ),
  );
}

Widget _buildName() {
  return TextFormField(
    validator: (String value) {
      if (value.isEmpty) {
        return "Заполните пустое поле";
      }
      return null;
    },
    onSaved: (String value) {
      _name = value;
    },
    decoration: InputDecoration(
      labelText: 'Имя',
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5.0))),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: AppColors.mainGreen, width: 2),
      ),
    ),
  );
}

Widget _buildPatronymic() {
  return TextFormField(
    validator: (String value) {
      if (value.isEmpty) {
        return "Заполните пустое поле";
      }
      return null;
    },
    onSaved: (String value) {
      _patronymic = value;
    },
    decoration: InputDecoration(
      labelText: 'Отчество',
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5.0))),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: AppColors.mainGreen, width: 2),
      ),
    ),
  );
}

Widget _buildCity() {
  return TextFormField(
    validator: (String value) {
      if (value.isEmpty) {
        return "Заполните пустое поле";
      }
      return null;
    },
    onSaved: (String value) {
      _city = value;
    },
    decoration: InputDecoration(
      labelText: 'Город',
      icon: Icon(Icons.location_on, color: Colors.grey),
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5.0))),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: AppColors.mainGreen, width: 2),
      ),
    ),
  );
}

Widget _buildMail() {
  return TextFormField(
    validator: (String value) {
      if (value.isEmpty) {
        return "Заполните пустое поле";
      }
      if (!RegExp(
              r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
          .hasMatch(value)) {
        return 'Неправильный формат почты';
      }
      return null;
    },
    onSaved: (String value) {
      _mail = value;
    },
    decoration: InputDecoration(
      labelText: 'Электронная почта',
      icon: Icon(Icons.mail, color: Colors.grey),
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5.0))),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: AppColors.mainGreen, width: 2),
      ),
    ),
  );
}

Widget _buildLogin() {
  return TextFormField(
    validator: (String value) {
      if (value.isEmpty) {
        return "Заполните пустое поле";
      }
      return null;
    },
    onSaved: (String value) {
      _login = value;
    },
    decoration: InputDecoration(
      labelText: 'Логин',
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5.0))),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: AppColors.mainGreen, width: 2),
      ),
    ),
  );
}

Widget _buildNumber() {
  return TextFormField(
    validator: (String value) {
      if (value.isEmpty) {
        return "Заполните пустое поле";
      }
      return null;
    },
    onSaved: (String value) {
      _number = value;
    },
    decoration: InputDecoration(
      labelText: 'Номер телефона',
      icon: Icon(Icons.phone, color: Colors.grey),
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5.0))),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: AppColors.mainGreen, width: 2),
      ),
    ),
  );
}

Widget _buildPassword() {
  return TextFormField(
    validator: (String value) {
      if (value.isEmpty) {
        return "Заполните пустое поле";
      }
      if (value.length < 6) {
        return "Пароль должен быть не меньше 6 символов";
      }
      return null;
    },
    onSaved: (String value) {
      _password = value;
    },
    decoration: InputDecoration(
      labelText: 'Пароль',
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5.0))),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: AppColors.mainGreen, width: 2),
      ),
    ),
  );
}

Widget _buildRepeatPassword() {
  return TextFormField(
    validator: (String value) {
      if (value.isEmpty) {
        return "Заполните пустое поле";
      }
      if (value != _password) {
        return "Пароли не совпадают";
      }
      return null;
    },
    onSaved: (String value) {
      _repeatPassword = value;
    },
    decoration: InputDecoration(
      labelText: 'Подтвердите пароль',
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5.0))),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: AppColors.mainGreen, width: 2),
      ),
    ),
  );
}

class _RegistrationWidgetState extends State<RegistrationWidget> {
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
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: _buildLastName(),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: _buildName(),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: _buildPatronymic(),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: _buildCity(),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: _buildMail(),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: _buildNumber(),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child:_buildLogin(),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: _buildPassword(),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: _buildRepeatPassword(),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: AppColors.mainGreen,
              ),
              onPressed: () {
                if (!_formKey.currentState.validate()) {
                  return;
                }
                _formKey.currentState.save();
              },
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text("Зарегистрироваться",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  text: 'Уже зарегистрированы?/Войти',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {Navigator.of(context).pushReplacementNamed(MainNavigationRouteNames.authorizationScreen);
                    }),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
