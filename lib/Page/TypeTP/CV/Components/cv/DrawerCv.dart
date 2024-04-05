// import 'dart:js';

// import 'package:flut_test/Page/Home/HomePage.dart';
import 'package:flut_test/Page/Home/HomePage.dart';
import 'package:flut_test/Page/TypeTP/CV/Components/formulaire/Body/SliceBody/formulaire_creen.dart';
import 'package:flutter/material.dart';

Drawer drawerCv(BuildContext context,double long) {
  return Drawer(
    width: long / 1.5,
    backgroundColor: const Color.fromARGB(255, 202, 201, 201),
    elevation: 5,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assetsCv/bgHeader.jpg'),
                  fit: BoxFit.cover)),
          child: Stack(
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    width: 120,
                    height: 120,
                    // color: Colors.red,
                    child: Image.asset(
                      "assetsCv/ney.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: InkWell(
                      onTap: (()=>{Navigator.popAndPushNamed(context, MyAppAcceuil.routeName)}),
                      child: Icon(
                        Icons.outbox,
                        color: Colors.white,
                      )))
            ],
          ),
        ),
        
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: allList.map((list){
              var icon = list[0];
              var  label = list[1];
              //  int index = allList.indexOf(list);
               var routeName = list.length < 3? null : list[2];
            return oneListView(icon, label, context, routeName );
            }
            
          
            ).toList(),
          ),
        )
      ],
    ),
  );
}
List<dynamic> allList = [
  [Icons.ac_unit_rounded, 'Réunion'],
  [Icons.settings, 'Paramètre'],
  [Icons.accessibility, 'programme'],
  [Icons.adb, 'Ajout', FormulaireScreen.routeName ],
];




  Widget oneListView(IconData icon, String label, BuildContext context, routeName ) {
    return Container(
      padding: EdgeInsets.all(0),
      child: GestureDetector(
        onTap: () => {
          if(routeName != null){
            Navigator.pushReplacementNamed(context, routeName)
          }
          else null
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          color: Colors.grey[500],
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Icon(
                  icon,
                  color: Color.fromARGB(255, 20, 20, 19),
                  size: 20.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                SizedBox(width: 20,),
                Expanded(child: Text(label, style:TextStyle(fontSize: 20, letterSpacing: 3))),
                 Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Color.fromARGB(255, 20, 20, 19),
                  size: 15.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }



