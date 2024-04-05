import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import 'Page/Home/HomePage.dart';

class SplashScreen extends StatefulWidget {
    static const routeName = 'splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2),
        () => {Navigator.pushReplacementNamed(context, MyAppAcceuil.routeName)});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurpleAccent,
        child: Center(
          child: Container(
            width: 50,
            height: 50,
            child: LoadingIndicator(
              indicatorType: Indicator.ballGridPulse,
              colors: [
                Colors.blue,
                Colors.amber,
              ],
            ),
          ),
        ),
      ),
    );
  }
}