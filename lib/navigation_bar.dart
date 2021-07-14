import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  NavigationBar({this.onTap});
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('fio'),
            accountEmail: Text('email'),
            currentAccountPicture: CircleAvatar(
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
              color: Color(0xff00a85d),
            ),
          ),
          ListTile(
              leading: Icon(Icons.people,),
              title: Text('Профиль'),
              onTap: () =>onTap(context,0)
          ),
          ListTile(
              leading: Icon(Icons.people,),
              title: Text('Путешествия'),
              onTap: () =>onTap(context,1)
          ),
          ListTile(
              leading: Icon(Icons.people,),
              title: Text('Призы'),
              onTap: () =>onTap(context,2)
          ),
          ListTile(
              leading: Icon(Icons.question_answer,),
              title: Text('Вопрос/Ответ'),
              onTap: () =>onTap(context,3)
          ),
          Divider(),
          ListTile(
              leading: Icon(Icons.people,),
              title: Text('Помощь'),
              onTap: () =>onTap(context,4)
          ),
          ListTile(
              leading: Icon(Icons.people,),
              title: Text('Настройки'),
              onTap: () =>onTap(context,5)
          ),
          ListTile(
              leading: Icon(Icons.people,),
              title: Text('О приложении'),
              onTap: () =>onTap(context,6)
          ),
          Divider(),
          ListTile(
              leading: Icon(Icons.logout,),
              title: Text('Выход'),
              onTap: () => {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                      return null;
                    }))
              }
          ),
        ],
      ),
    );
  }
}
