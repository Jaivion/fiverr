import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool visible = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  void initState() {
    _get_session();
    super.initState();
  }

  Future<void> _get_session() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    emailController.text = prefs.getString('email')!;
    nameController.text = prefs.getString('name')!;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Container changeProfileImage(BuildContext context) {
      final theme = Theme.of(context);
      showFilePicker(FileType fileType) async {
        Fluttertoast.showToast(
          msg: 'This is toast!',
          //toastLength: 100,
          //gravity: ToastGravity.CENTER,
          //backgroundColor: kSecondaryLightColor,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }

      return Container(
        width: size.width,
        height: 150.0,
        child: Center(
          child: Stack(
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundColor: theme.unselectedWidgetColor,
                backgroundImage: const AssetImage(
                  'assets/images/services/boycut.jpg',
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(120.0),
                onTap: () => showFilePicker(FileType.image),
                child: Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: theme.primaryColor.withOpacity(.7),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    //FlutterIcons.camera_fea,
                    color: Colors.purple,
                    size: 40.0,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Future profileUpdate() async {
      await Future.delayed(const Duration(seconds: 2));
      //  await EasyLoading.show(
      //    status: 'loading...',
      //    maskType: EasyLoadingMaskType.black,
      //  );
      //EasyLoading.show();
      final prefs = await SharedPreferences.getInstance();
      // Showing CircularProgressIndicator.
      setState(() {
        visible = true;
      });

      // Getting value from Controller
      String? name = nameController.text;
      String? email = emailController.text;

      String? user_id = prefs.getString('id');

      var response = await http.post(
        Uri.parse(
            'https://thesoftwareplanet.com/ems/flutter_api/user/profile_update'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'user_id': "$user_id",
          'name': name,
          'email': email,
        }),
      );

      var data = jsonDecode(response.body);
      print(data);

      if (data['ResponseCode'] == '200') {
        var responseBody = data['user'];
        print(responseBody);
        prefs.setString('email', email);
        prefs.setString('name', name);

        setState(() {
          visible = false;
        });
        Fluttertoast.showToast(
          msg: data['ResponseMsg'],
          //toastLength: 100,
          //gravity: ToastGravity.CENTER,
          //backgroundColor: kSecondaryLightColor,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        //toast(data['ResponseMsg']);

        Navigator.pushNamed(context, '/HomePage');
      } else {
        Fluttertoast.showToast(
          msg: data['ResponseMsg'],
          //toastLength: 100,
          //gravity: ToastGravity.CENTER,
          //backgroundColor: kSecondaryLightColor,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        //toast(data['ResponseMsg']);

        setState(() {
          visible = false;
        });
      }
    }

    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.grey[850],
          ),
          title: const Text(
            "Edit Profile",
            style: TextStyle(
                fontSize: 18, fontFamily: "workSans", color: Colors.black87),
          ),
          backgroundColor: const Color(0xffffffff),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                changeProfileImage(context),
                Container(
                  //height: size.height * 0.22,
                  width: size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        validator: null,
                        onChanged: null,
                        obscureText: false,
                        decoration: const InputDecoration(
                          hintText: 'Full name',
                          suffixIcon: Icon(Icons.person),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      TextFormField(
                        controller: emailController,
                        validator: null,
                        onChanged: null,
                        obscureText: false,
                        decoration: const InputDecoration(
                          hintText: 'Email address',
                          suffixIcon: Icon(Icons.email_outlined),
                        ),
                      ),
                      SizedBox(
                        width: size.width,
                        child: ElevatedButton(
                          onPressed: () {
                            profileUpdate();
                            // Get.back();
                            // toast('Successfully change profile info');
                          },
                          child: const Text(
                            'Update Profile',
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
