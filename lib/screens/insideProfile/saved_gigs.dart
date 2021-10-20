import 'package:flutter/material.dart';

class SavedGigs extends StatefulWidget {
  const SavedGigs({Key? key}) : super(key: key);

  @override
  _SavedGigsState createState() => _SavedGigsState();
}

class _SavedGigsState extends State<SavedGigs> {
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
        title: const Text(
          "Saved",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: const Color(0xffffffff),
      ),
      body: Container(),
    );
  }
}
