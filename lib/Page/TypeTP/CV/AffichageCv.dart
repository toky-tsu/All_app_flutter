// ignore: file_names
import 'package:flut_test/Models/modelDataCv.dart';
import 'package:flut_test/Page/TypeTP/CV/Components/cv/Body/SliceBody/HeaderBodyCv.dart';
import 'package:flut_test/Page/TypeTP/CV/Components/cv/Body/SliceBody/InfoBodyCv.dart';
// import 'package:flut_test/Page/TypeTP/CV/Components/formulaire/Body/SliceBody/formulaire_creen.dart';
import 'package:flut_test/WidgetComponents/TextAvecStyle.dart';
import 'package:flutter/material.dart';
// import 'package:secondprojet/Components/cv/Body/BodyContainerCv.dart';
// import 'package:secondprojet/Components/cv/Body/SliceBody/HeaderBodyCv.dart';
// import 'package:secondprojet/Components/cv/Body/SliceBody/InfoBodyCv.dart';
// import 'package:secondprojet/Components/formulaire/Body/BodyContainerForm.dart';
// import 'package:secondprojet/Components/formulaire/Body/SliceBody/infoBodyForm.dart';
// import 'package:secondprojet/Functions/TextAvecStyle.dart';
// import 'package:secondprojet/models/modelData.dart';
import 'Components/cv/DrawerCv.dart';

class AffichageCvPage extends StatefulWidget {
  const AffichageCvPage({super.key});

  @override
  State<AffichageCvPage> createState() => _AffichageCvPage();
}

class _AffichageCvPage extends State<AffichageCvPage> {
  bool affiche = true;
  late infoPersonnne monPropro;

  List<infoPersonnne> infoPersonnes = [
    infoPersonnne('assetsCv/ney.jpg', 'ANTOINE', 'JEAN', 'INFORMATIQUE', 'Tana',
        'EmailPer@gmain.com', '0344521687', 'E', 
        ['test'], 
        {'ExpPreso': {
          '2019-2022':{
            'INFORMATICIEN PROGRAMMER' : [
              'Formation de Pesonnel',
              'Choix de materiuiel et instalation',
              'Formation de personnel'
              'Formation de personnel'
            ]},
            '2018-2019':{
            'INFORMATICIEN PROGRAMMER' : [
              'Formation de Pesonnel',
              'Choix de materiuiel et instalation',
              'Formation de personnel'
              'Formation de personnel'
            ]},
            '2020-2018':{
            'INFORMATICIEN PROGRAMMER' : [
              'Formation de Pesonnel',
              'Choix de materiuiel et instalation',
              'Formation de personnel'
              'Formation de personnel'
            ]},
            } })
  ];

  @override
  void initState() {
    monPropro = infoPersonnes[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double long = MediaQuery.of(context).size.width;
    double larg = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 97, 97, 95),
        title: TextAvecStyle("CERICULUM VITAE" , 20),
      ),
      drawer: drawerCv(context, long),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: bodyContainerCv(larg, monPropro),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Text textAvecStyleBlackContenu(
    String data,
    double sizee,
  ) {
    return Text(data,
        style: TextStyle(fontSize: sizee, fontWeight: FontWeight.bold));
  }

  Column bodyContainerCv(larg,monPropro) {
    return Column(
      children: [
        HeaderBodyCv(monPropro),
        Expanded(
          // flex: 2,
          child: InfoBodyCv(larg, monPropro),
        ),
        // Expanded(flex: 2,child: Container(),)
      ],
    );
  }

}