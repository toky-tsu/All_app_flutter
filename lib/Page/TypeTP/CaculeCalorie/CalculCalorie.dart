import 'package:flutter/material.dart';

class CalculeCaloriePage extends StatefulWidget {
  const CalculeCaloriePage({super.key, required this.title});
  final String title;
  @override
  State<CalculeCaloriePage> createState() => _CalculeCaloriePageState();
}

class _CalculeCaloriePageState extends State<CalculeCaloriePage> {
  Map<int, String> mapActivite = {
    0: 'Faible',
    1: 'Modere',
    2: 'Forte',
  };
  late int niveau;
  late bool sexe;
  late double taille;
  late double poids;
  late int anivDate;
  late int age;
  late int calorie;
  late int calorieAvecActivite;

  @override
  void initState() {
    sexe = true;
    taille = 0.0;
    niveau = -1;
    age = 0;
    anivDate = 0;
    poids = 0.0;
    calorie = 0;
    calorieAvecActivite = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ((sexe) ? Colors.blue : Colors.pink),
        title: textAvecStyle(widget.title, colore: Colors.white, scale: 1.5),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textAvecStyle(
                  'Pemplissez tous Champs pour obtenir votre desoin journalier en calories.',
                  aligneText: TextAlign.center),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Card(
                  color: Colors.white,
                  elevation: 6.0,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/1.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            textAvecStyle("Femme",
                                scale: 1.3, colore: Colors.red),
                            Switch(
                                activeColor: sexe ? Colors.blue : Colors.pink,
                                inactiveThumbColor:
                                    sexe ? Colors.blue : Colors.pink,
                                value: sexe,
                                onChanged: (v) {
                                  setState(() {
                                    sexe = !sexe;
                                  });
                                }),
                            textAvecStyle("Homme",
                                scale: 1.3, colore: Colors.blue),
                          ],
                        ),
                        boutonPerso(
                            age <= 0
                                ? 'Notre date de naissance'
                                : 'Votre age est de : $age ',
                            calendar),
                        textAvecStyle(
                            'Votre taille est de : ${taille.toInt()} cm.',
                            colore: sexe ? Colors.blue : Colors.pink),
                        Slider(
                            min: 0,
                            max: 280,
                            activeColor: sexe ? Colors.blue : Colors.pink,
                            value: taille.toDouble(),
                            onChanged: (v) {
                              setState(() {
                                taille = v;
                              });
                            }),
                        TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                label: textAvecStyle("Votre poids."),
                                hintText: 'Entrer notre poids',
                                suffixIcon: Icon(Icons.poll_rounded),
                                suffixIconColor: sexe?Colors.blue : Colors.pink,
                                border: const OutlineInputBorder()),
                            onChanged: (String value) {
                              if(value != ""){
                                 setState(() {
                                poids = double.tryParse(value)!;
                                // print(poids);
                              });
                              }
                             
                            }),
                        textAvecStyle('Quelle est votre activité sportive ?',
                            colore: sexe ? Colors.blue : Colors.pink),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: radios(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              boutonPerso('Calculer', calorieCalcule),
            ],
          ),
        ),
      ),
    );
  }

  Text textAvecStyle(String data,
      {double scale = 1.1,
      colore = Colors.black,
      aligneText = TextAlign.left}) {
    return Text(
      data,
      textAlign: aligneText,
      textScaler: TextScaler.linear(scale),
      style: TextStyle(
        fontSize: 14,
        color: colore,
      ),
    );
  }

  ElevatedButton boutonPerso(
    String data,
    Function func,
  ) {
    return ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
          backgroundColor: MaterialStateProperty.all<Color>(
              sexe ? Colors.blue : Colors.pink),
        ),
        onPressed: () {
          func();
        },
        child: textAvecStyle(data, colore: Colors.white));
  }

  List<Widget> radios() {
    List<Widget> l = [];
    mapActivite.forEach((key, value) {
      Column colone = Column(
        children: [
          Radio(
              activeColor: sexe ? Colors.blue : Colors.pink,
              value: key,
              groupValue: niveau,
              onChanged: (i) {
                print(i);
                setState(() {
                  niveau = i!;
                });
              }),
          textAvecStyle(value, colore: sexe ? Colors.blue : Colors.pink),
        ],
      );
      l.add(colone);
    });
    return l;
  }

  Future<void> calendar() async {
    DateTime? annee = await showDatePicker(
        context: context,
        initialDatePickerMode: DatePickerMode.year,
        initialDate: DateTime(2000),
        firstDate: DateTime(1800),
        lastDate: DateTime.now());
    if (annee != null) {
      setState(() {
        anivDate = annee.year;
        calculeAge();
      });
    }
  }

  void calculeAge() {
    int dateNow = DateTime.now().year;
    setState(() {
      age = dateNow - anivDate;
    });
  }

  void calorieCalcule() {
    if (taille != 0.0 && age != 0 && poids != 0.0) {
      if (!sexe) {
        calorie =
            (66.4730 + (13.7316 * poids) + (5.0033 * taille) - (6.7550 * age))
                .toInt();
      } else {
        calorie =
            (655.0955 + (9.5634 * poids) + (1.8496 * taille) - (4.6756 * age))
                .toInt();
      }
      switch (niveau) {
        case 0:
          calorieAvecActivite = (calorie * 1.2).toInt();
          break;
        case 1:
          calorieAvecActivite = (calorie * 1.5).toInt();
          break;
        case 2:
          calorieAvecActivite = (calorie * 1.8).toInt();
          break;
        default:
          calorieAvecActivite = calorie;
          break;
      }
      setState(() {
        calorie;
        calorieAvecActivite;
      });
      dialogueCalorieResult();
    } else {
      alertCalculeCalorieFalse();
    }
  }

  Future<void> dialogueCalorieResult() async {
    return showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (BuildContext context){
        return SimpleDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),),
          title: textAvecStyle("Votre besoin en calories", aligneText: TextAlign.center),
          contentPadding: EdgeInsets.all(15.0),
          children: [
            textAvecStyle("Votre besoin de base est de : $calorie"),
            textAvecStyle("Votre besoin avec activité sportive est de: $calorieAvecActivite"),
            boutonPerso('ok', (){Navigator.pop(context);})
          ],
        );
      }
    );
  }

  Future<void> alertCalculeCalorieFalse() {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),),
            title: textAvecStyle("Erreur"),
            content: textAvecStyle("Tous les champ est obligatoire"),
            actions: [
              Center(
                child: boutonPerso('OK', () {
                  Navigator.pop(context);
                }),
              )
            ],
          );
        });
  }
}
