import 'package:flutter/material.dart';
import 'package:tatneft_quest/firstScreen/authorizationWidget/authorization_screen.dart';
import 'package:tatneft_quest/firstScreen/registrationWidget/registration_screen.dart';
import 'package:tatneft_quest/firstScreen/restorePasswordWidget/restore_password_screen.dart';
import 'package:tatneft_quest/firstScreen/splash_screen.dart';
import 'package:tatneft_quest/main/main_p.dart';
import 'package:tatneft_quest/menu/about_app_screen.dart';
import 'package:tatneft_quest/menu/help_screen.dart';
import 'package:tatneft_quest/menu/prizes_screen.dart';
import 'package:tatneft_quest/menu/profile_screen.dart';
import 'package:tatneft_quest/menu/questions_screen.dart';
import 'package:tatneft_quest/menu/settings_screen.dart';
import 'package:tatneft_quest/travelPackage/cascade/cascade_quest.dart';
import 'package:tatneft_quest/travelPackage/cascade/cs_first.dart';
import 'package:tatneft_quest/travelPackage/cascade/cs_second.dart';
import 'package:tatneft_quest/travelPackage/cascade/cs_third.dart';
import 'package:tatneft_quest/travelPackage/city/c_first.dart';
import 'package:tatneft_quest/travelPackage/city/c_second.dart';
import 'package:tatneft_quest/travelPackage/city/c_third.dart';
import 'package:tatneft_quest/travelPackage/city/city_quest.dart';
import 'package:tatneft_quest/travelPackage/healthy/h_first.dart';
import 'package:tatneft_quest/travelPackage/healthy/h_second.dart';
import 'package:tatneft_quest/travelPackage/healthy/h_third.dart';
import 'package:tatneft_quest/travelPackage/quest_history_screen.dart';
import 'package:tatneft_quest/travelPackage/shamsinur/sh_first.dart';
import 'package:tatneft_quest/travelPackage/shamsinur/sh_second.dart';
import 'package:tatneft_quest/travelPackage/shamsinur/sh_third.dart';
import 'package:tatneft_quest/travelPackage/shamsinur/shamsinur_quest.dart';
import 'package:tatneft_quest/travelPackage/start_action_screen.dart';

abstract class MainNavigationRouteNames {
  static const startPage = 'start_page';
  static const authorizationScreen = 'authorization_screen';
  static const restorePasswordScreen =
      '/authorization_screen/restore_password_screen';
  static const registrationScreen = 'registration_screen';
  static const mainP = '/main_p';
  static const mainScreen = '/main_p/main_screen';
  static const questHistoryScreen = '/main_p/quest_history';
  static const cascadeQuestScreen = 'questHistoryScreen/cascade_quest_screen';
  static const cascadeFirstPointScreen =
      '/cascade_quest_screen/cascade_first_point_screen';
  static const cascadeSecondPointScreen =
      '/cascade_quest_screen/cascade_second_point_screen';
  static const cascadeThirdPointScreen =
      '/cascade_quest_screen/cascade_third_point_screen';
  static const cityQuestScreen = 'questHistoryScreen/city_quest_screen';
  static const cityFirstPointScreen =
      '/city_quest_screen/city_first_point_screen';
  static const citySecondPointScreen =
      '/city_quest_screen/city_second_point_screen';
  static const cityThirdPointScreen =
      '/city_quest_screen/city_third_point_screen';
  static const healthyQuestScreen = 'questHistoryScreen/healthy_quest_screen';
  static const healthyFirstPointScreen =
      '/healthy_quest_screen/healthy_first_point_screen';
  static const healthySecondPointScreen =
      '/healthy_quest_screen/healthy_second_point_screen';
  static const healthyThirdPointScreen =
      '/healthy_quest_screen/healthy_third_point_screen';
  static const shamsinurQuestScreen = 'questHistoryScreen/shamsinur_quest_screen';
  static const shamsinurFirstPointScreen =
      '/shamsinur_quest_screen/shamsinur_first_point_screen';
  static const shamsinurSecondPointScreen =
      '/shamsinur_quest_screen/shamsinur_second_point_screen';
  static const shamsinurThirdPointScreen =
      '/shamsinur_quest_screen/shamsinur_third_point_screen';
  static const profileScreen = '/main_screen/profile_screen';
  static const prizesScreen = '/main_screen/prizes_screen';
  static const questionsScreen = '/main_screen/questions_screen';
  static const helpScreen = '/main_screen/help_screen';
  static const settingsScreen = '/main_screen/settings_screen';
  static const aboutAppScreen = '/movie_details/about_app_screen';
}
class MainNavigation {
  String initialRoute(bool isAuth) => isAuth
      ? MainNavigationRouteNames.mainScreen
      : MainNavigationRouteNames.authorizationScreen;
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.startPage: (context) => StartPage(),
    MainNavigationRouteNames.authorizationScreen: (context) => AuthorizationWidget(),
        // AuthProvider(model: AuthModel(), child: const ),
    MainNavigationRouteNames.restorePasswordScreen: (context) => RestorePasswordWidget(),
    MainNavigationRouteNames.registrationScreen: (context) => RegistrationWidget(),
    MainNavigationRouteNames.mainP: (context) => MainP(),
    MainNavigationRouteNames.mainScreen: (context) => StartActionWidget(),
    MainNavigationRouteNames.questHistoryScreen: (context) => QuestHistory(),
    MainNavigationRouteNames.cascadeQuestScreen: (context) => CascadeQuestWidget(),
    MainNavigationRouteNames.cascadeFirstPointScreen: (context) => CascadeFirstPointWidget(),
    MainNavigationRouteNames.cascadeSecondPointScreen: (context) => CascadeSecondPointWidget(),
    MainNavigationRouteNames.cascadeThirdPointScreen: (context) => CascadeThirdPointWidget(),
    MainNavigationRouteNames.cityQuestScreen: (context) => CityQuestWidget(),
    MainNavigationRouteNames.cityFirstPointScreen: (context) => CityFirstPointWidget(),
    MainNavigationRouteNames.citySecondPointScreen: (context) => CitySecondPointWidget(),
    MainNavigationRouteNames.cityThirdPointScreen: (context) => CityThirdPointWidget(),
    MainNavigationRouteNames.healthyQuestScreen: (context) => HealthyFirstPointWidget(),
    MainNavigationRouteNames.healthyFirstPointScreen: (context) => HealthyFirstPointWidget(),
    MainNavigationRouteNames.healthySecondPointScreen: (context) => HealthySecondPointWidget(),
    MainNavigationRouteNames.healthyThirdPointScreen: (context) => HealthyThirdPointWidget(),
    MainNavigationRouteNames.shamsinurQuestScreen: (context) => ShamsinurQuestWidget(),
    MainNavigationRouteNames.shamsinurFirstPointScreen: (context) => ShamsinurFirstPointWidget(),
    MainNavigationRouteNames.shamsinurSecondPointScreen: (context) => ShamsinurSecondPointWidget(),
    MainNavigationRouteNames.shamsinurThirdPointScreen: (context) => ShamsinurThirdPointWidget(),
    MainNavigationRouteNames.profileScreen: (context) => ProfileWidget(),
    MainNavigationRouteNames.prizesScreen: (context) => PrizesWidget(),
    MainNavigationRouteNames.questionsScreen: (context) => QuestionsWidget(),
    MainNavigationRouteNames.helpScreen: (context) => HelpWidget(),
    MainNavigationRouteNames.settingsScreen: (context) => SettingsWidget(),
    MainNavigationRouteNames.aboutAppScreen: (context) => AboutAppWidget(),
  };
}
