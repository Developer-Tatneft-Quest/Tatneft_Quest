import 'package:flutter/material.dart';
import 'package:tatneft_quest/firstScreen/authorizationWidget/authorization_screen.dart';
import 'package:tatneft_quest/firstScreen/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:tatneft_quest/slider/onboarding.dart';
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
              home: OnbordingWidget(),
              theme: ThemeData());
        }
      },
    );
  }
}
