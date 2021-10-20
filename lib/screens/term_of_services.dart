import 'package:flutter/material.dart';

class TermOfServices extends StatefulWidget {
  const TermOfServices({ Key? key }) : super(key: key);

  @override
  _TermOfServicesState createState() => _TermOfServicesState();
}

class _TermOfServicesState extends State<TermOfServices> {
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
          title: const Text("Terms of services",style: TextStyle(color: Colors.black87),),
          backgroundColor: const Color(0xffffffff),
      ),
      body: Container(),
    );
  }
}