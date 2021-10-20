import 'package:fiverr/helpers/onboarding_buyer_card.dart';
import 'package:flutter/material.dart';

class MyInterests extends StatefulWidget {
  const MyInterests({Key? key}) : super(key: key);

  @override
  _MyInterestsState createState() => _MyInterestsState();
}

class _MyInterestsState extends State<MyInterests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.grey[850],
        ),
        title: const Text(
          "Interests",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: const Color(0xffffffff),
      ),
      body: const BuyerCardScreen(),
    );
  }
}
