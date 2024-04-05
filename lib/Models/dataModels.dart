import 'package:flut_test/Page/page404/page404.dart';
import 'package:flutter/material.dart';

class ListActivite {
  String nom;
  String categorie;
  IconData icones;
  Widget page;


  ListActivite(this.nom, this.icones, {this.categorie ='Pas de categori', this.page = const Page404()});

}