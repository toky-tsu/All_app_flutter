import 'package:flut_test/WidgetComponents/TextAvecStyle.dart';
import 'package:flutter/material.dart';
import '../../../../../../../WidgetComponents/cv/TitreContenue.dart';
// import '../../../../Functions/TextAvecStyleBlack.dart';

Container InfoBodyCv(larg, monPropro) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
    child: SingleChildScrollView(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              titreContenue("PROFIL", larg),
              Container(
                // color: Colors.red,
                width: larg,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      // color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextAvecStyleBlack("ADRESSE :", 18),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child:
                                TextAvecStyleBlack("${monPropro.adress}", 15),
                          ),
                          TextAvecStyleBlack("TELEPHONE :", 18),
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: TextAvecStyleBlack(
                                "${monPropro.telephone}", 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.yellow,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextAvecStyleBlack("EMAIL :", 18),
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: TextAvecStyleBlack("${monPropro.email}", 15),
                          ),
                          TextAvecStyleBlack("PERMIS :", 18),
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child:
                                TextAvecStyleBlack("${monPropro.permis}", 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              titreContenue("EXPERIENCE PROFESSIONEL", larg),
              infoSection(monPropro),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 50, left: 10),
                      child: Text('2019-2022'),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextAvecStyleBlack("INFORMATICIEN PROGRAMATEUR", 15),
                          Text("-Formation de Personnel."),
                          Text("-Choix de matériel et instalation"),
                          Text("-Formation de Personnel."),
                          Text("-Formation de Personnel."),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 50, left: 10),
                      child: const Text('2019-2022'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextAvecStyleBlack("INFORMATICIEN PROGRAMATEUR", 15),
                        const Text("-Formation de Personnel."),
                        const Text("-Choix de matériel et instalation"),
                        const Text("-Formation de Personnel."),
                        const Text("-Formation de Personnel."),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 50, left: 10),
                      child: Text('2019-2022'),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextAvecStyleBlack("INFORMATICIEN PROGRAMATEUR", 15),
                          Text("-Formation de Personnel."),
                          Text("-Choix de matériel et instalation"),
                          Text("-Formation de Personnel."),
                          Text("-Formation de Personnel."),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              titreContenue("FORMATION", larg),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: larg / 8,
                      margin: EdgeInsets.only(right: 10, left: 10),
                      child: Text('2023'),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextAvecStyleBlack("INGENIEUR INFORMATIQUE", 15),
                          Text("Intitut Superieur Informatique"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: larg / 8,
                      margin: EdgeInsets.only(right: 10, left: 10),
                      child: Text('2021'),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextAvecStyleBlack("LICENCE INFORMATIQUE", 15),
                          Text("Intitut Superieur Informatique"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titreContenue("CONPETENCE", larg),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "- Installation, maintenance de matériel",
                      ),
                      Text("- Edition de cahier de charge"),
                      Text("- Mis en place de maintenance de réseau"),
                      Text("- Sécurisation de réseau"),
                      Text("- Mis à jour de logiciel"),
                    ]),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titreContenue("LOISIRS", larg),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "- Ballades dans la nature",
                      ),
                      Text("- Shopping"),
                      Text("- Cuisiner"),
                      Text("- Basket-ball"),
                    ]),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Container infoSection(monpro) {
   Map expprofl = monpro.experient;
   Iterable expproflKey = expprofl.values;
   print(expproflKey);
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 50, left: 10),
          child: Text('2019-2022'),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextAvecStyleBlack("INFORMATICIEN PROGRAMATEUR", 15),
              Text("-Formation de Personnel."),
              Text("-Choix de matériel et instalation"),
              Text("-Formation de Personnel."),
              Text("-Formation de Personnel."),
            ],
          ),
        ),
      ],
    ),
  );
}
