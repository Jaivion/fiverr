import 'package:fiverr/helpers/signup_helper.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
          title: const Text("Sign up",style: TextStyle(fontSize: 18,fontFamily: "workSans",color: Colors.black87),),
          backgroundColor: const Color(0xffffffff),
      ),
      body: const SignupHelper(),
    );
  }
}