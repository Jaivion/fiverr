import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({ Key? key }) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.grey[850],
          ),
          title: const Text("About us",style: TextStyle(color: Colors.black87),),
          backgroundColor: const Color(0xffffffff),
      ),
      body: Container(),
    );
  }
}