import 'package:flutter/material.dart';
import 'package:tatneft_quest/menu/about_app_screen.dart';
import 'package:tatneft_quest/menu/help_screen.dart';
import 'package:tatneft_quest/menu/navigation_bar.dart';
import 'package:tatneft_quest/menu/prizes_screen.dart';
import 'package:tatneft_quest/menu/profile_screen.dart';
import 'package:tatneft_quest/menu/questions_screen.dart';
import 'package:tatneft_quest/menu/settings_screen.dart';
import 'package:tatneft_quest/travelPackage/start_action_screen.dart';
import 'package:tatneft_quest/ui/theme/app_colors.dart';
import 'package:tatneft_quest/travelPackage/quest_history_screen.dart';

class MainP extends StatefulWidget {
  @override
  _MainPState createState() => _MainPState();
}

class _MainPState extends State<MainP> {
  int index = 1;
  List<Widget> list = [
    ProfileWidget(),
    StartActionWidget(),
    PrizesWidget(),
    QuestionsWidget(),
    HelpWidget(),
    SettingsWidget(),
    AboutAppWidget(),
    QuestHistory()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //шапка
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.mainGreen,
      ),
      //тело приложения
      body: list[index],
      //навигационная панель
      drawer: NavigationBar(
        onTap: (ctx, i) {
          setState(() {
            index = i;
            Navigator.pop(ctx);
          });
        },
      ),
    );
  }
}
