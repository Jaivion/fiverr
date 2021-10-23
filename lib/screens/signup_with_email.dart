import 'dart:convert';

import 'package:fiverr/helpers/app_colors.dart';
import 'package:fiverr/helpers/signup_helper.dart';
import 'package:fiverr/screens/term_of_services.dart';
import 'package:fiverr/utils/custom_page_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class SignUpWithEmail extends StatefulWidget {
  const SignUpWithEmail({Key? key}) : super(key: key);

  @override
  _SignUpWithEmailState createState() => _SignUpWithEmailState();
}

class _SignUpWithEmailState extends State<SignUpWithEmail> {
  bool visible = false;
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  Future userSignup() async {
    final prefs = await SharedPreferences.getInstance();
    // Showing CircularProgressIndicator.
    setState(() {
      visible = true;
    });

    // Getting value from Controller
    String email = emailController.text;
    String password = passwordController.text;
    // String confirmpassword = confirmpasswordController.text;
    String name = nameController.text;

    var response = await http.post(
      Uri.parse('https://easemysalon.info/flutter_api/user/user_register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
        'name': name,
      }),
    );
    //var response = await http.post(url, body: json.encode(data[email]));

    // Getting Server response into variable.
    var data = jsonDecode(response.body);
    print(data);

    // If the Response Message is Matched.
    if (data['ResponseCode'] == '200') {
      var responseBody = data['user_id'];
      print(responseBody);

      // prefs.setString('email', responseBody['email']);
      // prefs.setString('name', responseBody['name']);
      // prefs.setString('id', responseBody['id']);
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });
      // Get.to(BottomNavigationBarPage());
      // Get.offAll(
      //   PhoneVerificationOTPPage(),arguments: [
      //     {'user_id':'$responseBody'}
      // ]

      // );

      // Navigate to Home & Sending Email to Next Screen.
      //Navigator.pushNamed(context, '/HomePage');
    } else {
      // If Email or Password did not Matched.
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });
    }
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
          "Sign up using Email",
          style: TextStyle(
              fontSize: 18, fontFamily: "workSans", color: Colors.black87),
        ),
        backgroundColor: const Color(0xffffffff),
      ),
      body: Material(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          padding: const EdgeInsets.only(left: 10, right: 10),
          //alignment: Alignment.bottomLeft,
          //color: Colors.green,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    //color: Colors.green,
                    fontFamily: "workSans",
                  ),
                  fillColor: Colors.green,

                  //labelStyle: TextStyle(fontSize: 20, color: Colors.green),
                  focusColor: Colors.green,
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Public Username",
                  labelStyle: TextStyle(
                    fontFamily: "workSans",
                  ),
                  fillColor: Colors.green,
                  //labelStyle: TextStyle(fontSize: 20, color: Colors.green),
                  focusColor: Colors.green,
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Your username will be public and you will not be able to change it.",
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[600],
                    fontFamily: "workSans",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    fillColor: Colors.green,
                    label: Text("Password"),
                    labelStyle: TextStyle(
                      fontFamily: "workSans",
                    ),
                    // suffixIcon: IconButton(
                    //         icon: Icon(signInProv.obscureText
                    //             ? FlutterIcons.visibility_off_mdi
                    //             : FlutterIcons.visibility_mdi),
                    //         onPressed: () {
                    //           signInProv.changeObscureText();
                    //         },
                    //       ),
                    focusColor: Colors.green,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Combine upper and lowercase letters and numbers.",
                  softWrap: true,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[600],
                    fontFamily: "workSans",
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Material(
                borderRadius: BorderRadius.circular(4),
                color: const Color(0xff1dbf73),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: double.maxFinite,
                    alignment: Alignment.center,
                    child: const Text(
                      "Sign up",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "workSans",
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "By joining, You agree to Fiverr's.",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                        fontFamily: "workSans",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          CustomPageRoute(child: const TermOfServices()),
                        );
                      },
                      child: Text(
                        "Terms of service",
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 13,
                          color: primaryGreen,
                          fontFamily: "workSans",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
