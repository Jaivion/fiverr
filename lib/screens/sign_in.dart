import 'package:fiverr/helpers/signin_helper.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
          "Sign in",
          style: TextStyle(
              fontSize: 18, fontFamily: "workSans", color: Colors.black87),
        ),
        backgroundColor: const Color(0xffffffff),
      ),
      body: const SigninHelper(),
    );
  }
} 
