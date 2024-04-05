// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Activite> mesListeIcon = [
    Activite("music Video", Icons.music_video),
    Activite("queue music", Icons.queue_music),
    Activite("accountMusic", Icons.account_box),
    Activite("ABC", Icons.abc),
    Activite("Car", Icons.car_crash_sharp),
    Activite("Hause", Icons.house),
    Activite("moto", Icons.motorcycle),
    Activite("Childen", Icons.child_friendly),
    Activite("famille", Icons.family_restroom),
    Activite("warHouse", Icons.warehouse),
    Activite("Events", Icons.emoji_events),
    Activite("queue music", Icons.queue_music),
    Activite("accountMusic", Icons.account_box),
    Activite("ABC", Icons.abc),
    Activite("Car", Icons.car_crash_sharp),
    Activite("Hause", Icons.house),
    Activite("moto", Icons.motorcycle),
    Activite("Childen", Icons.child_friendly),
    Activite("famille", Icons.family_restroom),
    Activite("warHouse", Icons.warehouse),
    Activite("Events", Icons.emoji_events),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Demo de ListeView et GridView"),
        ),
      ),
      body:Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 0.3),
                  colors: [
                    Color.fromARGB(255, 102, 102, 103),
                    Color.fromARGB(255, 13, 12, 12),
                  ],
                ),
              ),
            ),
            // Contenu de la page
            Column(
            children: [
              Expanded(
                flex: 1,
                child: GridView.builder(
                  itemCount: mesListeIcon.length,
                  
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
                  itemBuilder: (BuildContext, i){
                    return Container(
                      margin: EdgeInsets.all(15),
                      child: Container(
                        height: 100,
                        width: 50,
                        child: Card(
                          elevation: 9.5,
                          color: Colors.grey[500],
                          
                          child: Container(
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(mesListeIcon[i].icone, size:50,),
                                Text(mesListeIcon[i].nom, ),
                                Text("Activiter")
                              ],
                            ),
                          ),
                        ),
                      ),
          
                    );
                  })
              ),
                Expanded(
                  flex: 1,
                  child: Text("data2"))
            ],
          ),
        
    
            IndexedStack(
              index: 1, // Index de l'élément à afficher en premier plan
              children: [
                Positioned(
                  top: 50,
                  left: 50,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 150,
                  child: Image.network(
                    'https://via.placeholder.com/150',
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
        ],
      ) 
      // Center(
      //   child: Container(
      //     decoration: const BoxDecoration(
      //       gradient: LinearGradient(
      //         begin: Alignment(0.0, -1.0),
      //         end: Alignment(0.0, 0.3), 
      //         // begin: Alignment.topCenter,
      //         // end: Alignment.bottomCenter,
      //         colors: [
      //           Color.fromARGB(255, 102, 102, 103),
      //           Color.fromARGB(255, 13, 12, 12),
      //         ],
      //       )
      //     ),
      //     child: Column(
      //       children: [
      //         Expanded(
      //           flex: 1,
      //           child: GridView.builder(
      //             itemCount: mesListeIcon.length,
                  
      //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
      //             itemBuilder: (BuildContext, i){
      //               return Container(
      //                 margin: EdgeInsets.all(15),
      //                 child: Container(
      //                   height: 100,
      //                   width: 50,
      //                   child: Card(
      //                     elevation: 9.5,
      //                     color: Colors.grey[500],
                          
      //                     child: Container(
      //                       height: 100,
      //                       child: Column(
      //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                         children: [
      //                           Icon(mesListeIcon[i].icone, size:50,),
      //                           Text(mesListeIcon[i].nom, ),
      //                           Text("Activiter")
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                 ),
          
      //               );
      //             })
      //         ),
      //           Expanded(
      //             flex: 1,
      //             child: Text("data2"))
      //       ],
      //     ),
      //   ),
      // )



      // // Center(

      //   // child: Column(
      //   //   children:[
      //   //     Expanded(
      //   //       child: 
      //   //       ListView.builder(
      //   //       itemCount: mesListeIcon.length,
      //   //       itemBuilder: (context, i){
      //   //         Activite activite = mesListeIcon[i];
      //   //         String key = activite.nom;
      //   //         return Dismissible(
      //   //           key: Key(key), 
      //   //           child: Card(
      //   //             elevation: 9.0,
      //   //             child: Container(
      //   //               height: 100.0,
      //   //               // color: Colors.red,
      //   //             ),
      //   //           )
      //   //           );
      //   //       },
      //   //       ),
      //   //     ),
      //   //     Container(
      //   //       height: 100,
      //   //       child: ListView.builder(
      //   //         scrollDirection: Axis.horizontal,
      //   //         itemCount: mesListeIcon.length,
      //   //         itemBuilder: (context, i){
      //   //           return InkWell(
      //   //             onTap: (()=>{print("Simple touche")}),
      //   //             onDoubleTap: (()=>{print("Double touche")}),
      //   //             child: Card(
      //   //               elevation: 9.0,
                      
      //   //               child: Container(
      //   //                 width: MediaQuery.of(context).size.width / 1.2,
                        
      //   //                 color: Colors.red,
                    
      //   //               ),
      //   //             ),
      //   //           );
      //   //         }),
      //   //     )
      //   //   ], 
      //   // ),
      //   //   ),
      // // Center(
      // //   child: ListView.builder(
      // //     itemCount: mesListeIcon.length,
          
      // //     itemBuilder: (context , i){
      // //       Activite activite = mesListeIcon[i];
      // //       String key = activite.nom;
      // //       return Dismissible(
      // //         key: Key(key),
      // //         background: Container(color: Colors.blue,),
      // //         child: ListTile(
      // //           title: Text(activite.nom),
      // //           trailing: Icon(activite.icone),
      // //         ),
      // //         onDismissed: (DismissDirection){
      // //           setState(() {
      // //             print(key);
      // //             mesListeIcon.removeAt(i);
      // //           });
      // //         },
      // //       );
      // //     })
      // // ),
    );
  }
}

class Activite {
  String nom;
  IconData icone;

  Activite(this.nom, this.icone);
}


// animation loaginnngggg

//  bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     // Simule un chargement en cours pendant 3 secondes
//     Future.delayed(Duration(seconds: 3), () {
//       setState(() {
//         isLoading = false;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Loading Animation Example'),
//       ),
//       body: Center(
//         child: isLoading
//             ? CircularProgressIndicator()
//             : Text('Contenu chargé'),
//       ),
//     );
//   }
// }
