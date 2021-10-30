import 'package:fiverr/helpers/signup_helper.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyNotificationScreen extends StatefulWidget {
  const MyNotificationScreen({Key? key}) : super(key: key);

  @override
  _MyNotificationScreenState createState() => _MyNotificationScreenState();
}

class _MyNotificationScreenState extends State<MyNotificationScreen> {
  String? email;
  String? name;
  bool isLoggedIn = false;
  @override
  void initState() {
    super.initState();
    getUserEmail();
  }

  Future getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      email = prefs.getString('email');
      name = prefs.getString('name');
      if (email != null) {
        isLoggedIn = true;
      } else {
        isLoggedIn = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        shadowColor: Colors.grey[400],
        title: Text(
          "Notifications",
          style: TextStyle(
              fontFamily: "workSans", fontSize: 18, color: Colors.grey[700]),
        ),
        // actions: const [
        //   Icon(
        //     Icons.search,
        //     color: Colors.black87,
        //     size: 26,
        //   ),
        //   SizedBox(
        //     width: 15,
        //   ),
        // ],
      ),
      body: !isLoggedIn ? const SignupHelper() : Container(),
    );
  }
}
