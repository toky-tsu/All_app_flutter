import 'package:flut_test/Page/Home/HomePage.dart';
import "package:flut_test/Page/TypeTP/CV/Components/formulaire/Body/SliceBody/formulaire_creen.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

import "splash_screen.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // SystemChrome.setPreferredOrientations(DeviceOrientation.values);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        // brightness: Brightness.dark,
        useMaterial3: true,
        
      ),
      routes: {
        MyAppAcceuil.routeName : (context) => MyAppAcceuil(),
        FormulaireScreen.routeName : (context) => FormulaireScreen(),
        SplashScreen.routeName : (context) => SplashScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}