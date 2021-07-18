import 'package:flutter/material.dart';
import 'package:tatneft_quest/city/c_first.dart';
import 'package:tatneft_quest/main_p.dart';
import 'package:tatneft_quest/shamsinur/sh_first.dart';

class CityQuest extends StatefulWidget {

  @override
  _CityQuestState createState() => _CityQuestState();
}

class _CityQuestState extends State<CityQuest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                  return MainP();
                }));
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
                child: Text("Городской парк",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
          ),
          Image.asset("images/city_park.jpg"),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(""
                  "«Шамсинур» - это первая из 4-х новых парковых зон в городе Альметьевск, обустроенная в рамках Года парков и скверов. На реализацию проекта было выделено 76 млн. рублей. Две трети из этих средств – из республиканского бюджета, треть – из муниципального. В парковом организме чётко выделяется несколько «групп мышц»: настил для йоги, две игровые зоны, амфитеатр с деревянными сиденьями, дендрарий, спортивная площадка с тренажёрами и турниками, навес со столами для тихого отдыха и пикников (здесь ловит бесплатный Wi-Fi). Беговая и пешеходная дорожки служат главными «кровеносными сосудами парка». Парк оснащен площадкой для воркаута, для самых юных посетителей построены современные детские игровые площадки. Торжественное открытие парка состоялось в амфитеатре. С приветственной речью выступил Айрат Хайруллин.")),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child:RaisedButton(
                elevation: 0,
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                        return CFirst();
                      }));},
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Начать квест",
                      style:
                      TextStyle(color: Colors.white,)),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ))
        ],
      ),
    );
  }
}
