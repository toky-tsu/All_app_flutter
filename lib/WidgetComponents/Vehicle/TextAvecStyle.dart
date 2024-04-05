import "package:flutter/material.dart";

Text TextAvecStyle(String data,{color = Colors.white, double scale =1.2, FontWeight fontWeight = FontWeight.bold, double height = 0}){
  return Text(
    data ,
    textScaler: TextScaler.linear(scale),
    
    style: TextStyle(
      color: color,
      fontSize: 12,
      fontWeight: fontWeight,
      height: height,
      
      
    ),
  );
}

Color colorsBlackAppBar = Color.fromRGBO(59, 60, 61, 1);
Color colorsBlackCard = Color.fromRGBO(49, 51, 51, 1);
Color colorsBlackBackGrande = Color.fromRGBO(28, 30, 30, 1);