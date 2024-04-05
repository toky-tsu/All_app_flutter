import 'package:flut_test/Models/dataModels.dart';
import 'package:flut_test/Page/TypeTP/CaculeCalorie/CalculCalorie.dart';
import 'package:flut_test/Page/TypeTP/PageVehicle/MyHomeDrive.dart';
import 'package:flut_test/Page/TypeTP/Quizz/home.dart';
import 'package:flut_test/WidgetComponents/cv/custom_text.dart';
import 'package:flutter/material.dart';

import '../TypeTP/CV/AffichageCv.dart';

class MyAppAcceuil extends StatefulWidget {
    static const routeName = 'acceuil';
  const MyAppAcceuil({super.key});

  @override
  State<MyAppAcceuil> createState() => _MyAppAcceuilState();
}

class _MyAppAcceuilState extends State<MyAppAcceuil> {

  List<ListActivite> mesActivite = [
    ListActivite('Curriculum Vitae', Icons.account_circle_outlined, categorie: 'TP', page: AffichageCvPage()),
    ListActivite('QUIZZ', Icons.quiz, categorie: 'TP', page: MyHomePageQuizz()),
    ListActivite('Calcule Calorie', Icons.calculate, categorie: 'TP', page : CalculeCaloriePage(title: 'Calcule Calorie',)),
    ListActivite('Page Vehicle', Icons.car_rental, categorie: 'TP', page: MyHomeDrive())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80), 
        child: AppBar(
          title: CustomText("Mes applications"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        )
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0), 
          child: ListView.builder(
            itemCount: mesActivite.length,
            itemBuilder: (context, i){
              ListActivite activite = mesActivite[i];
              String key = activite.nom;
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: InkWell(
                  onTap:() =>navigatorPage(activite.page),
                  child: Card(
                    elevation: 10,
                    color: Colors.blue,
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.symmetric(horizontal: 20 ),
                      child: Row(
                        key: Key(key),
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                  
                        children: [
                          CustomText(activite.nom, color: Colors.white,scale: 1.3,),
                          Icon(activite.icones, size: 40,color: Colors.white60,)
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
        ),
    );
  }
  Future navigatorPage(page) {
    return  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}