import 'package:flutter/material.dart';

Container TextAvecStyle(String data, double sizee) {
  return Container(
      // color: Colors.red,
      child: Text(
    data,
    style: TextStyle(color: Colors.white, fontSize: sizee),
    overflow: TextOverflow.fade,
  ));
}

Text TextAvecStyleBlack(String data, double sizee) {
  return Text(data,
      style: TextStyle(fontSize: sizee, fontWeight: FontWeight.bold));
}

Container fieldText(name, textLabel, fonctionInput) {
  TextEditingController name = TextEditingController();
  return Container(
    child: Column(children: [
      Text(
        textLabel,
      ),
      TextField(
        controller: name,
        onChanged: fonctionInput,
      ),
    ]),
  );
}
