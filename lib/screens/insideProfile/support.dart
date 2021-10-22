import 'package:fiverr/helpers/feadback_dialog_box.dart';
import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  void openDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: const Color(0xff1dbf73),
            title: const Center(
              child: Text("Help Us Improve!",
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            contentPadding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            content: Container(
              color: Colors.white,
              width: 350,
              height: 360,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Icon(
                      Icons.note_alt_outlined,
                      color: Color(0xff1dbf73),
                      size: 80,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Text(
                      "What do you think about Fiverr app?",
                      style: TextStyle(fontSize: 20),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    title: Text(
                      "Happy",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    title: Text(
                      "Confused",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    title: Text(
                      "Unhappy",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

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
          style: TextStyle(
              fontSize: 18, fontFamily: "workSans", color: Colors.black87),
        ),
        backgroundColor: const Color(0xffffffff),
      ),
      body: Container(
        child: Column(
          children: [
            const ListTile(
              title: Text(
                "Help & Education",
                style: TextStyle(fontFamily: "workSans"),
              ),
            ),
            const Divider(
              height: 1,
              indent: 15,
              endIndent: 2,
            ),
            InkWell(
              onTap: () {
                openDialog();
              },
              child: const ListTile(
                title: Text(
                  "Leave feedback",
                  style: TextStyle(fontFamily: "workSans"),
                ),
              ),
            ),
            const Divider(
              height: 1,
              indent: 15,
              endIndent: 2,
            ),
            const ListTile(
              title: Text(
                "Forum",
                style: TextStyle(fontFamily: "workSans"),
              ),
            ),
            const Divider(
              height: 1,
              indent: 15,
              endIndent: 2,
            ),
            const ListTile(
              title: Text(
                "Blog",
                style: TextStyle(fontFamily: "workSans"),
              ),
            ),
            const Divider(
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
