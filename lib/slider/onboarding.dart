import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:tatneft_quest/firstScreen/authorizationWidget/authorization_screen.dart';
import 'package:tatneft_quest/resources/app_image.dart';
import "package:tatneft_quest/slider/onboarding_model.dart";
import 'package:tatneft_quest/ui/theme/app_colors.dart';

class OnbordingWidget extends StatefulWidget {
  @override
  _OnbordingWidgetState createState() => _OnbordingWidgetState();
}

class _OnbordingWidgetState extends State<OnbordingWidget> {
  int currentIndex = 0;
  PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
           LoadingImage.logoSlider1,
            height: 125,
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image,
                        height: 250,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            color: AppColors.mainGreen,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: TextButton(
                    child: Text('Закрыть'),
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: TextStyle(fontSize: 16)),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                      (index) => buildDot(index, context),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Text(currentIndex == contents.length - 1
                        ? 'Начать'
                        : 'Дальше'),
                    onPressed: () {
                      if (currentIndex == contents.length - 1) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => AuthorizationWidget(),
                          ),
                        );
                      }
                      _controller.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn,
                      );
                    },
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: TextStyle(fontSize: 16)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 8,
      width: currentIndex == index ? 20 : 8,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
    );
  }
}
