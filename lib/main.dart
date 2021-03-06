import 'dart:async';

import 'package:fiverr/screens/bottomnav.dart';
import 'package:fiverr/screens/onboarding_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feverr',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnboardingPage())));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/bottomNav': (BuildContext context) => const BottomNav(),
      },
      home: Material(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "fiverr",
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.grey[850],
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ".",
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.green[400],
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
