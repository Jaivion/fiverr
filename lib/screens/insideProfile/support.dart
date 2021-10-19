import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
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
          "Support",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: const Color(0xffffffff),
      ),
      body: Container(
        child: Column(
          children: const [
            ListTile(
              title: Text("Help & Education"),
            ),
            Divider(
              height: 1,
              indent: 15,
              endIndent: 2,
            ),
            ListTile(
              title: Text("Leave feedback"),
            ),
            Divider(
              height: 1,
              indent: 15,
              endIndent: 2,
            ),
            ListTile(
              title: Text("Forum"),
            ),
            Divider(
              height: 1,
              indent: 15,
              endIndent: 2,
            ),
            ListTile(
              title: Text("Blog"),
            ),
            Divider(
              height: 1,
              indent: 15,
              endIndent: 2,
            ),
          ],
        ),
      ),
    );
  }
}
