import 'package:flutter/material.dart';
import 'package:flut_test/WidgetComponents/TextAvecStyle.dart';

Container HeaderBodyCv(monPropro){
  return Container(
              padding: EdgeInsets.all(10),
              color: Color.fromARGB(255, 53, 53, 53),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      monPropro.urlImg,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.red,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextAvecStyle('${monPropro.nom} ${monPropro.prenom}', 20),
                            TextAvecStyle('${monPropro.secteur}', 15),
                            TextAvecStyle(
                                "Développeur web et mobile expérimenté ReactJs et React Native, Diplômée",
                                12),
                          ]),
                    ),
                  )
                ],
              ),
            )
           ;
}