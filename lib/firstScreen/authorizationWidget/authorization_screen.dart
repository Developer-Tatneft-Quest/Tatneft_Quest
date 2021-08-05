import 'package:flutter/material.dart';
import 'package:tatneft_quest/firstScreen/registrationWidget/registration_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:tatneft_quest/main/main_p.dart';
import 'package:tatneft_quest/firstScreen/restorePasswordWidget/restore_password_screen.dart';
import 'package:tatneft_quest/ui/navigation/main_navigation.dart';
import 'package:tatneft_quest/ui/theme/app_colors.dart';

class AuthorizationWidget extends StatefulWidget {
  @override
  _AuthorizationWidgetState createState() => _AuthorizationWidgetState();
}

class _AuthorizationWidgetState extends State<AuthorizationWidget> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            //изображение
            Image.asset("images/cascade.jpg"),
            //делает виджет гибким
            Flexible(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          //пустое пространство
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Авторизация",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Padding(
                              //отступ по горизонтали
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Электронная почта',
                                    labelStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              )),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  // видимость/невидимость вводимых символов
                                  obscureText: !_passwordVisible,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    hintText: 'Введите пароль',
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        // иконка для вид/невид вводимых символов
                                        _passwordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.black54,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _passwordVisible = !_passwordVisible;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              )),
                          //текст который имеет методы
                          RichText(
                            text: TextSpan(
                                text: 'Восстановить пароль',
                                style: TextStyle(color: Colors.black),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).pushNamed(
                                        MainNavigationRouteNames
                                            .restorePasswordScreen);
                                  }),
                          ),
                          Container(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: AppColors.mainGreen,
                              ),
                              //метод для перехода
                              onPressed: () {
                                Navigator.of(context).pushReplacementNamed(
                                    MainNavigationRouteNames.mainP);
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 5),
                                child: Text("Войти",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'Создать аккаунт',
                                style: TextStyle(color: Colors.black),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).pushNamed(
                                        MainNavigationRouteNames
                                            .registrationScreen);
                                  }),
                          )
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
