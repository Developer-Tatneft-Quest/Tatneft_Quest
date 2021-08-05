import 'package:flutter/material.dart';
import 'package:tatneft_quest/firstScreen/authorizationWidget/authorization_screen.dart';
import 'package:tatneft_quest/firstScreen/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:tatneft_quest/ui/navigation/main_navigation.dart';
import 'main_model.dart';

void main() { //async is needed there
  // WidgetsFlutterBinding.ensureInitialized();
  // final model = MainModel();
  // await model.checkAuth();
  runApp(MyApp(
    // model: model,
  ));
}

class MyApp extends StatelessWidget {
  final MainModel model;
  static final mainNavigation = MainNavigation();

  const MyApp({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return FutureBuilder(
      //время отображения сплеш скрина
      future: Future.delayed(Duration(seconds: 1)),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            //убирает баннер флаттера
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              title: "Название",
              routes: mainNavigation.routes,
              onGenerateRoute: (RouteSettings settings) {
                return MaterialPageRoute<void>(builder: (context) {
                  return Scaffold(
                    body: Center(
                      child: Text('Произошла ошибка навигации'),
                    ),
                  );
                });
              },
              home: StartPage());
        } else {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Название",
              routes: mainNavigation.routes,
              onGenerateRoute: (RouteSettings settings) {
                return MaterialPageRoute<void>(builder: (context) {
                  return Scaffold(
                    body: Center(
                      child: Text('Произошла ошибка навигации'),
                    ),
                  );
                });
              },
              home: AuthorizationWidget(),
              theme: ThemeData());
        }
      },
    );
  }
}


// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     //убирает верхнюю шапку телефона
//     SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
//     return FutureBuilder(
//       //время отображения сплеш скрина
//       future: Future.delayed(Duration(seconds: 1)),
//       builder: (context, AsyncSnapshot snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return MaterialApp(
//               //убирает баннер флаттера
//               debugShowCheckedModeBanner: false,
//               theme: ThemeData(
//                 primarySwatch: Colors.blue,
//               ),
//               title: "Название",
//               routes: {
//                 '/start_page': (context) => StartPage(),
//                 '/authorization_screen': (context) => AuthorizationWidget(),
//                 '/restore_password_screen': (context) => RestorePasswordWidget(),
//                 '/registration_screen': (context) => RegistrationWidget(),
//                 '/start_action_screen': (context) => StartActionWidget(),
//                 '/cascade_quest_screen': (context) => CascadeQuestWidget(),
//                 '/cascade_first_point_screen': (context) => CascadeFirstPointWidget(),
//                 '/cascade_second_point_screen': (context) => CascadeSecondPointWidget(),
//                 '/cascade_third_point_screen': (context) => CascadeThirdPointWidget(),
//                 '/city_quest_screen': (context) => CityQuestWidget(),
//                 '/city_first_point_screen': (context) => CityFirstPointWidget(),
//                 '/city_second_point_screen': (context) => CitySecondPointWidget(),
//                 '/city_third_point_screen': (context) => CityThirdPointWidget(),
//                 '/healthy_quest_screen': (context) => HealthyQuestWidget(),
//                 '/healthy_first_point_screen': (context) => HealthyFirstPointWidget(),
//                 '/healthy_second_point_screen': (context) => HealthySecondPointWidget(),
//                 '/healthy_third_point_screen': (context) => HealthyThirdPointWidget(),
//                 '/shamsinur_quest_screen': (context) => ShamsinurQuestWidget(),
//                 '/shamsinur_first_point_screen': (context) => ShamsinurFirstPointWidget(),
//                 '/shamsinur_second_point_screen': (context) => ShamsinurSecondPointWidget(),
//                 '/shamsinur_third_point_screen': (context) => ShamsinurThirdPointWidget(),
//                 '/profile_screen': (context) => ProfileWidget(),
//                 '/prizes_screen': (context) => PrizesWidget(),
//                 '/questions_screen': (context) => QuestionsWidget(),
//                 '/help_screen': (context) => HelpWidget(),
//                 '/settings_screen': (context) => SettingsWidget(),
//                 '/about_app_screen': (context) => AboutAppWidget()
//               },
//               onGenerateRoute: (RouteSettings settings) {
//                 return MaterialPageRoute<void>(builder: (context) {
//                   return Scaffold(
//                     body: Center(
//                       child: Text('Произошла ошибка навигации'),
//                     ),
//                   );
//                 });
//               },
//               home: StartPage());
//         } else {
//           return MaterialApp(
//               debugShowCheckedModeBanner: false,
//               title: "Название",
//               routes: {
//                 '/start_page': (context) => StartPage(),
//                 '/authorization_screen': (context) => AuthorizationWidget(),
//                 '/restore_password_screen': (context) => RestorePasswordWidget(),
//                 '/registration_screen': (context) => RegistrationWidget(),
//                 '/start_action_screen': (context) => StartActionWidget(),
//                 '/cascade_quest_screen': (context) => CascadeQuestWidget(),
//                 '/cascade_first_point_screen': (context) => CascadeFirstPointWidget(),
//                 '/cascade_second_point_screen': (context) => CascadeSecondPointWidget(),
//                 '/cascade_third_point_screen': (context) => CascadeThirdPointWidget(),
//                 '/city_quest_screen': (context) => CityQuestWidget(),
//                 '/city_first_point_screen': (context) => CityFirstPointWidget(),
//                 '/city_second_point_screen': (context) => CitySecondPointWidget(),
//                 '/city_third_point_screen': (context) => CityThirdPointWidget(),
//                 '/healthy_quest_screen': (context) => HealthyQuestWidget(),
//                 '/healthy_first_point_screen': (context) => HealthyFirstPointWidget(),
//                 '/healthy_second_point_screen': (context) => HealthySecondPointWidget(),
//                 '/healthy_third_point_screen': (context) => HealthyThirdPointWidget(),
//                 '/shamsinur_quest_screen': (context) => ShamsinurQuestWidget(),
//                 '/shamsinur_first_point_screen': (context) => ShamsinurFirstPointWidget(),
//                 '/shamsinur_second_point_screen': (context) => ShamsinurSecondPointWidget(),
//                 '/shamsinur_third_point_screen': (context) => ShamsinurThirdPointWidget(),
//                 '/profile_screen': (context) => ProfileWidget(),
//                 '/prizes_screen': (context) => PrizesWidget(),
//                 '/questions_screen': (context) => QuestionsWidget(),
//                 '/help_screen': (context) => HelpWidget(),
//                 '/settings_screen': (context) => SettingsWidget(),
//                 '/about_app_screen': (context) => AboutAppWidget()
//               },
//               onGenerateRoute: (RouteSettings settings) {
//                 return MaterialPageRoute<void>(builder: (context) {
//                   return Scaffold(
//                     body: Center(
//                       child: Text('Произошла ошибка навигации'),
//                     ),
//                   );
//                 });
//               },
//               home: AuthorizationWidget(),
//               theme: ThemeData());
//         }
//       },
//     );
//   }
// }
