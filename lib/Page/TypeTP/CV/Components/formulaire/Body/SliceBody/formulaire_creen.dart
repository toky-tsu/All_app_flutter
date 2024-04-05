// import 'package:flut_test/WidgetComponents/TextAvecStyle.dart';
// import 'package:flut_test/WidgetComponents/cv/TitreContenue.dart';
import 'package:flutter/material.dart';
// import 'package:secondprojet/Functions/TextAvecStyle.dart';
// import 'package:secondprojet/Functions/TextAvecStyleBlack.dart';
// import 'package:secondprojet/Functions/TitreContenue.dart';
// import 'package:secondprojet/TextFields.dart';

class FormulaireScreen extends StatefulWidget {
  static const routeName = 'formulaire';
  const FormulaireScreen({super.key});

  @override
  State<FormulaireScreen> createState() => _FormulaireScreenState();
}

class _FormulaireScreenState extends State<FormulaireScreen> {
  int _currentIndex = -1;
  bool isActivate = false;
  List<String> listTitle = [
    "profil",
    "Experience professionel",
    "Formation",
    "Conpetence",
    "Loisir",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulaire'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: listTitle.asMap().entries.map((entry) {
            int index = entry.key;
            String title = entry.value.toUpperCase();
            return modelTtle(index,
                title); // Envoyer l'index et le titre à votre modèle de widget
          }).toList(),
        ),
      ),
    );
  }

  Column modelTtle(index, title) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          margin: EdgeInsets.symmetric(vertical: 3),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                    // color: Colors.deepPurple,
                    child: Text(title.toUpperCase(),
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold))),
              ),
              InkWell(
                onTap: () => setState(() {
                  _currentIndex = index;
                  isActivate = !isActivate;
                  if(isActivate == false){
                    _currentIndex = -1;
                  }
                  
                }),
                child: SizedBox(
                  // color: Colors.red,
                  width: 30,
                  height: 30,
                  child: Icon(
                    _currentIndex != index
                        ? Icons.arrow_drop_up
                        : Icons.arrow_drop_down,
                    size: 40,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: _currentIndex != index
              ? Container(
                  height: 2,
                  color: Colors.black,
                )
              : Container(
                  color: Colors.grey[200],
                  child: Form(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: Text('Nom'),
                              hintText: 'Entre Notre nom',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: Text('Prenom'),
                              hintText: 'Entre Notre Prenom',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: Text('Apresse'),
                              hintText: 'Entre Notre adresse',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}

// class FormulaireScreen extends StatefulWidget {
//     static const routeName = 'formulaire';
//   const FormulaireScreen(   { super.key});

//   @override
//   State<FormulaireScreen> createState() => _FormulaireScreenState();
// }

// class _FormulaireScreenState extends State<FormulaireScreen> {
//   TextEditingController NomController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     double larger = MediaQuery.of(context).size.width;

//     return InfoBodyForms(larger);
//   }

//   Padding InfoBodyForms(larg) {
//     return Padding(
//       padding: EdgeInsets.all(0),
//       child: Expanded(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Column(
//                 children: [
//                   titreContenue("A propos", larg),
//                   Container(
//                     child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
                          
//                           TextField(
//                             decoration: InputDecoration(
//                               label: TextAvecStyleBlack('Nom', 20),
//                                 hintText: 'Entrer notre nom',
//                                 border: OutlineInputBorder()),
//                             controller: NomController,
//                             onChanged: (value) {
//                               print(value);
//                             },
//                           ),
//                         ]),
//                   ),
//                 ],
//               ),
//               titreContenue("A propos", larg),
//               titreContenue("A propos", larg),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
