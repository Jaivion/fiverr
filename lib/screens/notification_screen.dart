import 'package:fiverr/helpers/signin_helper.dart';
import 'package:flutter/material.dart';

class MyNotificationScreen extends StatefulWidget {
  const MyNotificationScreen({Key? key}) : super(key: key);

  @override
  _MyNotificationScreenState createState() => _MyNotificationScreenState();
}

class _MyNotificationScreenState extends State<MyNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        shadowColor: Colors.grey[400],
        title: Text(
          "Notifications",
          style: TextStyle(fontSize: 20, color: Colors.grey[700]),
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
      body:  const SigninHelper(),
    );
  }
}
