import 'package:flutter/material.dart';

class CustomText extends Text{
  CustomText(data, {super.key, color = Colors.black, textalign = TextAlign.center, double scale = 1.0}) : 
    super(
      data,
      textAlign: textalign,
      textScaler: TextScaler.linear(scale),
      style: TextStyle(
        color: color,
        
      ),
      );

}