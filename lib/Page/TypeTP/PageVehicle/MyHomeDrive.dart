// import 'package:firstprojet/PageVoiture/composants/TextAvecStyle.dart';
import '../../../WidgetComponents/Vehicle/TextAvecStyle.dart';
import 'package:flutter/material.dart';

class MyHomeDrive extends StatefulWidget {
  const MyHomeDrive({super.key});

  @override
  State<MyHomeDrive> createState() => _MyHomeDriveState();
}

class _MyHomeDriveState extends State<MyHomeDrive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextAvecStyle('iX xDrive50', scale: 1.7),
        backgroundColor: colorsBlackAppBar,
        centerTitle: true,

        // leading: Icon(
        //   Icons.notifications,
        //   color: Colors.white,
        //   size: 20,
        // ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.car_crash,
              color: Colors.white,
              size: 20,
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Color.fromRGBO(35, 37, 37, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.car_rental,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.map,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.wordpress,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.login,
              size: 30,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Container(
          color: colorsBlackBackGrande,
          padding: EdgeInsetsDirectional.all(0),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.bottomLeft,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment(0.9, -1.5),
                    end: Alignment(0.5, 0.5),
                    // begin: Alignment.topCenter,
                    // end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(94, 95, 95, 1),
                      Color.fromRGBO(26, 28, 28, 1),
                    ],
                  )),
                  // color: Colors.blue,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.all(4),
                            color: Color.fromRGBO(26, 28, 28, 1),
                            child: TextAvecStyle("Check Status")),
                        Container(
                            padding: EdgeInsets.only(top: 30),
                            // color: Colors.blue,
                            child: TextAvecStyle('ALL GOOD',
                                scale: 7, height: 0.9)),
                      ]),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  color: Color.fromRGBO(26, 28, 28, 1),
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextAvecStyle(
                          'Update from vehicule on 12/09/24 01:45 MP'),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height,
                            // color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Card(
                                    color: Color.fromRGBO(49, 51, 51, 1),
                                    child: Container(
                                      height: 60,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 5,
                                            color: Colors.white,
                                            margin: EdgeInsets.only(bottom: 2),
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.money,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    "Store of Charge",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text("100",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20)),
                                                  Text("% / ",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15)),
                                                  Text("556",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20)),
                                                  Text("km",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15)),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Card(
                                    color: Color.fromRGBO(49, 51, 51, 1),
                                    child: Container(
                                      height: 60,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(
                                            Icons.close,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                          Icon(
                                            Icons.key,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                          Icon(
                                            Icons.alarm,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                          Icon(
                                            Icons.live_tv,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                          Icon(
                                            Icons.air,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 5.0, bottom: 5.0, right: 5.0),
                                        child: Card(
                                          color: Color.fromRGBO(49, 51, 51, 1),
                                          child: Container(
                                            height: 135,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.7,
                                            child: Padding(
                                              padding: EdgeInsets.all(15),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.car_crash,
                                                    size: 30,
                                                    color: Colors.white,
                                                  ),
                                                  Text("Vehicle Finder",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 25)),
                                                  Text(
                                                      "Kort-Dompert-StroBe 7, 84135 Dingolfing",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 5.0, bottom: 5.0, right: 5.0),
                                        child: Card(
                                          color: Color.fromRGBO(49, 51, 51, 1),
                                          child: Container(
                                            height: 135,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.7,
                                            child: Padding(
                                              padding: EdgeInsets.all(15),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.route,
                                                    size: 30,
                                                    color: Colors.white,
                                                  ),
                                                  Text("Map Route",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 25)),
                                                  Text(
                                                      "Kort-Dompert-StroBe 7, 84135 Dingolfing",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 5.0, bottom: 5.0, right: 5.0),
                                        child: Card(
                                          color: Color.fromRGBO(49, 51, 51, 1),
                                          child: Container(
                                            height: 135,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.7,
                                            child: Padding(
                                              padding: EdgeInsets.all(15),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.camera_alt_outlined,
                                                    size: 30,
                                                    color: Colors.white,
                                                  ),
                                                  Text("Remote Cameras",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 25)),
                                                  Text(
                                                      "Remote 3D and Remote Inside View",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
