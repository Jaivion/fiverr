import 'package:fiverr/helpers/signup_helper.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        shadowColor: Colors.grey[400],
        title: Text(
          "Inbox",
          style: TextStyle(fontFamily: "workSans",fontSize: 18, color: Colors.grey[700]),
        ),
        actions: const [
          Icon(
            Icons.filter_alt,
            color: Colors.black87,
            size: 26,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: const SignupHelper(),
    ); 
  }
}
