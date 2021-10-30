import 'dart:async';
import 'package:fiverr/helpers/theme.dart';
import 'package:fiverr/providers/category_provider.dart';
import 'package:fiverr/providers/theme_provider.dart';
import 'package:fiverr/screens/bottomnav.dart';
import 'package:fiverr/screens/onboarding_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => CategoryProvider()),
      ],
      child: Consumer<ThemeProvider>(builder: (context, theme, snapshot) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Fusion',
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          transitionDuration: const Duration(milliseconds: 200),
          defaultTransition: Transition.topLevel,
          home: const Splash(),
        );
      }),
    );
    // return MaterialApp(
    //   title: 'Fiverr',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: const Splash(),
    //   debugShowCheckedModeBanner: false,
    // );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String? email;
  startTime() {
    Timer(
      const Duration(seconds: 3),
      () {
        if (email == null) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const OnboardingPage()));
        } else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const BottomNav()));
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _get_session();
    startTime();
  }

  Future<void> _get_session() async {
    final prefs = await SharedPreferences.getInstance();
    email = prefs.getString('email');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/bottomNav': (BuildContext context) => const BottomNav(),
      },
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: Image.asset('assets/icons/fusionblack.png',
                width: 180, height: 80, fit: BoxFit.fill),
            // Image.asset('assets/icons/fusion_logo.png',
            //     width: 180, height: 200, fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
