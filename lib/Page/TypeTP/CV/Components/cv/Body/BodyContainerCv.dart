import 'package:flut_test/Page/TypeTP/CV/Components/cv/Body/SliceBody/HeaderBodyCv.dart';
import 'package:flutter/material.dart';
// import 'package:secondprojet/Components/cv/Body/SliceBody/HeaderBodyCv.dart';
// import 'package:secondprojet/Components/cv/Body/SliceBody/InfoBodyCv.dart';

import 'SliceBody/InfoBodyCv.dart';

Column BodyContainerCv(larg,monPropro){
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