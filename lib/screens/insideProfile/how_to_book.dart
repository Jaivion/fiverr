import 'package:flutter/material.dart';

class HowToBook extends StatefulWidget {
  const HowToBook({Key? key}) : super(key: key);

  @override
  _HowToBookState createState() => _HowToBookState();
}

class _HowToBookState extends State<HowToBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.grey[850],
        ),
        title: const Text(
          "How to Book",
          style: TextStyle(fontSize: 18,fontFamily: "workSans", color: Colors.black87),
        ),
        backgroundColor: const Color(0xffffffff),
      ),
      body: Container(),
    );
  }
}
