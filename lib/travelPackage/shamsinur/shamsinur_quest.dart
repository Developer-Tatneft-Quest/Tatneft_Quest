import 'package:flutter/material.dart';
import 'package:tatneft_quest/main/main_p.dart';
import 'package:tatneft_quest/travelPackage/shamsinur/sh_first.dart';
import 'package:tatneft_quest/ui/navigation/main_navigation.dart';

class ShamsinurQuestWidget extends StatefulWidget {
  @override
  _ShamsinurQuestWidgetState createState() => _ShamsinurQuestWidgetState();
}

class _ShamsinurQuestWidgetState extends State<ShamsinurQuestWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacementNamed(context, MainNavigationRouteNames.mainP);
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.black54,
        title: Image.asset('images/logo_for_slider.png', height: 50),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "Парк Шамсинур",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                )),
          ),
          Image.asset("images/park_shamsinur.jpg"),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(""
                  "«Шамсинур» - это первая из 4-х новых парковых зон в городе Альметьевск, обустроенная в рамках Года парков и скверов. На реализацию проекта было выделено 76 млн. рублей. Две трети из этих средств – из республиканского бюджета, треть – из муниципального. В парковом организме чётко выделяется несколько «групп мышц»: настил для йоги, две игровые зоны, амфитеатр с деревянными сиденьями, дендрарий, спортивная площадка с тренажёрами и турниками, навес со столами для тихого отдыха и пикников (здесь ловит бесплатный Wi-Fi). Беговая и пешеходная дорожки служат главными «кровеносными сосудами парка». Парк оснащен площадкой для воркаута, для самых юных посетителей построены современные детские игровые площадки. Торжественное открытие парка состоялось в амфитеатре. С приветственной речью выступил Айрат Хайруллин.")),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.red,
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, MainNavigationRouteNames.shamsinurFirstPointScreen);
                },
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Начать квест",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ))
        ],
      ),
    );
  }
}
