import 'package:flut_test/Models/Quizzquestion.dart';
import 'package:flut_test/WidgetComponents/cv/custom_text.dart';
import 'package:flutter/material.dart';

class PageQuizz extends StatefulWidget {
  const PageQuizz({super.key});

  @override
  State<PageQuizz> createState() => _PageQuizzState();
}

class _PageQuizzState extends State<PageQuizz> {
  late Question uneQuestion;

  List<Question> listesQuestions = [
    Question('La devise de la Belgique est l\'union fait la force', true, '',
        'belgique.JPG'),
    Question('La lune va finir par tomber sur terre à cause de la gravité',
        false, 'Au contraire la lune s\'éloigne', 'lune.jpg'),
    Question('La Russie est plus grande en superficie que Pluton', true, '',
        'russie.jpg'),
    Question('Nyctalope est une race naine d\'antilope', false,
        'C’est une aptitude à voir dans le noir', 'nyctalope.jpg'),
    Question('Le Commodore 64 est l\’oridnateur de bureau le plus vendu', true,
        '', 'commodore.jpg'),
    Question('Le nom du drapeau des pirates es black skull', false,
        'Il est appelé Jolly Roger', 'pirate.png'),
    Question('Haddock est le nom du chien Tintin', false, 'C\'est Milou',
        'tintin.jpg'),
    Question('La barbe des pharaons était fausse', true,
        'A l\'époque déjà ils utilisaient des postiches', 'pharaon.jpg'),
    Question('Au Québec tire toi une bûche veut dire viens viens t\'asseoir',
        true, 'La bûche, fameuse chaise de bucheron', 'buche.jpg'),
    Question('Le module lunaire Eagle de possédait de 4Ko de Ram', true,
        'Dire que je me plains avec mes 8GO de ram sur mon mac', 'eagle.jpg'),
  ];

  int index = 0;
  int score = 0;

  @override
  void initState() {
    uneQuestion = listesQuestions[index];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 112, 189),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        title: CustomText(
          'Quizz',
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText("Question numéro : ${index + 1}"),
            CustomText("Score : ${score} / ${listesQuestions.length}"),
            Card(
                color: Colors.red,
                elevation: 15.0,
                child: SizedBox(
                  width: largeur / 1.3,
                  height: largeur / 1.3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assetsQuizz/${uneQuestion.imagePath}',
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            CustomText(
              uneQuestion.question,
              scale: 1.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bouttonBool(true),
                bouttonBool(false),
              ],
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton bouttonBool(bool val) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
        onPressed: () {
          dialog(val);
        },
        child: CustomText(
          (val) ? 'Vrai' : 'Faux',
          color: Colors.white,
        ));
  }

  Future<Null> dialog(bool val) async {
    bool bonReponse = (val == uneQuestion.reponse);
    if (bonReponse) {
      score++;
    }

    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),),
              title: CustomText((bonReponse) ? "c'est Gagné " : "Oupps !!!",
                  color: (bonReponse) ? Colors.green : Colors.red),
              children: [
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                 shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.width / 1.5,
                    
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        (bonReponse)
                            ? 'assetsQuizz/vrai.jpg'
                            : 'assetsQuizz/faux.jpg',
                        fit: BoxFit.cover,
                        
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                ),
                CustomText(uneQuestion.explication,
                    scale: 1.3, color: Colors.grey[900]),
                Container(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)
                            )
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue)),
                              
                      onPressed: () {
                        Navigator.pop(context);
                        questionSuivant();
                      },
                      child: CustomText(
                        "Suivant",
                        color: Colors.white,
                      )),
                )
              ],
            );
          
        });
  }

  Future<void> alert() {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
            title: CustomText(
              "C'est finie",
              color: Colors.blue,
              scale: 1.2,
            ),
            content: CustomText("Notre Score est : $score / $index"),
            actions: [
              Center(
                child: TextButton(
                  style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    onPressed: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    child: CustomText(
                      'OK',
                      color: Colors.white,
                      scale: 1.2,
                    )),
              )
            ],
          );
        }
        );
  }

  void questionSuivant() {
    if (index < listesQuestions.length - 1) {
      index++;
      setState(() {
        uneQuestion = listesQuestions[index];
      });
    } else {
      alert();
    }
  }
}
