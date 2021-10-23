import 'dart:convert';

import 'package:fiverr/screens/bottomnav.dart';
import 'package:fiverr/screens/forgot_password.dart';
import 'package:fiverr/utils/custom_page_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class SigninHelper extends StatefulWidget {
  const SigninHelper({Key? key}) : super(key: key);

  @override
  State<SigninHelper> createState() => _SigninHelperState();
}

class _SigninHelperState extends State<SigninHelper> {
  bool visible = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future userLogin() async {
    final prefs = await SharedPreferences.getInstance();
    // Showing CircularProgressIndicator.
    setState(() {
      visible = true;
    });

    // Getting value from Controller
    String email = emailController.text;
    String password = passwordController.text;
    print(email);

    var response = await http.post(
      Uri.parse('https://easemysalon.info/flutter_api/user/new_user_login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );
    //var response = await http.post(url, body: json.encode(data[email]));

    // Getting Server response into variable.
    var data = jsonDecode(response.body);
    print(data);

    // If the Response Message is Matched.
    if (data['ResponseCode'] == '200') {
      var responseBody = data['user'];
      print(responseBody);
      prefs.setString('email', responseBody['email']);
      prefs.setString('name', responseBody['name']);
      prefs.setString('id', responseBody['id']);
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });
      // Get.to(BottomNavigationBarPage());
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const BottomNav()));
      print('Logged in successfully.');
      // Get.offAll(
      //   const BottomNav(),
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
    return Material(
      child: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: const EdgeInsets.only(left: 10, right: 10),
        //alignment: Alignment.bottomLeft,
        //color: Colors.green,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //const Spacer(),
                //Expanded(child: Container()),
                const SizedBox(
                  height: 230,
                ),
                const Image(
                    height: 60, image: AssetImage('assets/icons/Favicon.png')),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Welcome back",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "workSans",
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Sign in to Fiverr to pick up exactly where you left off.',
                  //"Join our growing freelance community to offer your professional services, connect with customers, and get paid on Fiverr's trusted platform",
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: "workSans",
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.indigo[700],
                      child: InkWell(
                        onTap: () => {},
                        child: Container(
                          height: 40,
                          width: 175,
                          alignment: Alignment.center,
                          child: const Text(
                            "Facebook",
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
                    const Spacer(),
                    Material(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.indigoAccent[700],
                      child: InkWell(
                        onTap: () => {},
                        child: Container(
                          height: 40,
                          width: 175,
                          alignment: Alignment.center,
                          child: const Text(
                            "Google",
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
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("or sign in with email",
                        style: TextStyle(
                          fontFamily: "workSans",
                          fontSize: 13,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email or username",
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
                const SizedBox(
                  height: 40,
                ),
                Material(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xff1dbf73),
                  child: InkWell(
                    onTap: () => userLogin(),
                    child: Container(
                      height: 40,
                      width: double.maxFinite,
                      alignment: Alignment.center,
                      child: const Text(
                        "Continue",
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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          CustomPageRoute(child: const ForgotPassword()),
                        );
                      },
                      splashColor: Colors.grey,
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontFamily: "workSans",
                            color: Color(0xff1dbf73),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
