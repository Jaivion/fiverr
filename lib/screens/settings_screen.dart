import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          "Settings",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: const Color(0xffffffff),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            const ListTile(
              title: Text("Notifications"),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            const ListTile(
              title: Text("Notification Sound"),
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 10,
            ),
            const ListTile(
              title: Text("Security"),
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 10,
            ),
            const ListTile(
              title: Text("Terms of Service"),
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 10,
            ),
            const ListTile(
              title: Text("Privacy policy"),
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 10,
            ),
            const ListTile(
              title: Text("Language"),
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 10,
            ),
            ListTile(
              title: Text("Logout",style: TextStyle(color: Colors.red[300]),),
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 10,
            ),
          ],
        ),
      ),
    );
  }
}
