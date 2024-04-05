import 'package:flut_test/Page/TypeTP/Quizz/page_quizz.dart';
import 'package:flut_test/WidgetComponents/cv/custom_text.dart';
import 'package:flutter/material.dart';

class MyHomePageQuizz extends StatefulWidget {
  const MyHomePageQuizz({super.key});

  @override
  State<MyHomePageQuizz> createState() => _MyHomePageQuizzState();
}

class _MyHomePageQuizzState extends State<MyHomePageQuizz> {
  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 112, 189),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        title: Text("Quizz"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 5.0,
              
              // color: Colors.red,
              child: Container(
                width: largeur / 1.3,
                height: largeur / 1.3,
                
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assetsQuizz/cover.jpg',
                    fit: BoxFit.cover,
                    
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return PageQuizz();
                }));
              },
              child: CustomText('Commencez la Question',
                  color: Colors.white, scale: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
