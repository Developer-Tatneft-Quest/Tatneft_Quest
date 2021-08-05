import 'package:flutter/material.dart';
import 'package:tatneft_quest/firstScreen/authorizationWidget/authorization_screen.dart';
import 'package:tatneft_quest/ui/navigation/main_navigation.dart';
import 'package:tatneft_quest/ui/theme/app_colors.dart';

class NavigationBar extends StatelessWidget {
  NavigationBar({this.onTap});

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //экран в виде листа
      child: ListView(
        //отступ
        padding: EdgeInsets.zero,
        children: [
          //шапка в навигационной панели
          UserAccountsDrawerHeader(
            accountName: Text('fio'),
            accountEmail: Text('email'),
            currentAccountPicture: CircleAvatar(
              //изображение круглое
              child: ClipOval(
                child: Image.asset(
                  'images/icon4.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: AppColors.mainGreen,
            ),
          ),
          ListTile(
              leading: Icon(
                Icons.people,
              ),
              title: Text('Профиль'),
              onTap: () => onTap(context, 0)),
          ListTile(
              leading: Icon(
                Icons.people,
              ),
              title: Text('Путешествия'),
              onTap: () => onTap(context, 1)),
          ListTile(
              leading: Icon(
                Icons.people,
              ),
              title: Text('Призы'),
              onTap: () => onTap(context, 2)),
          ListTile(
              leading: Icon(
                Icons.question_answer,
              ),
              title: Text('Вопрос/Ответ'),
              onTap: () => onTap(context, 3)),
          //разделитель
          Divider(),
          ListTile(
              leading: Icon(
                Icons.people,
              ),
              title: Text('Помощь'),
              onTap: () => onTap(context, 4)),
          ListTile(
              leading: Icon(
                Icons.people,
              ),
              title: Text('Настройки'),
              onTap: () => onTap(context, 5)),
          ListTile(
              leading: Icon(
                Icons.people,
              ),
              title: Text('О приложении'),
              onTap: () => onTap(context, 6)),
          Divider(),
          ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: Text('Выход'),
              //метод для перехода и чистки данных при выходе
              onTap: () => {
                    Navigator.pushReplacementNamed(
                        context, MainNavigationRouteNames.authorizationScreen)
                  }),
        ],
      ),
    );
  }
}
