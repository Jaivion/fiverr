import 'package:fiverr/screens/aboutus.dart';
import 'package:fiverr/screens/insideProfile/become_a_seller.dart';
import 'package:fiverr/screens/insideProfile/manage_oreders.dart';
import 'package:fiverr/screens/insideProfile/manage_requests.dart';
import 'package:fiverr/screens/insideProfile/my_interests.dart';
import 'package:fiverr/screens/insideProfile/payments.dart';
import 'package:fiverr/screens/insideProfile/post_a_request.dart';
import 'package:fiverr/screens/insideProfile/saved_gigs.dart';
import 'package:fiverr/screens/insideProfile/support.dart';
import 'package:fiverr/screens/privacy_policy.dart';
import 'package:fiverr/screens/settings_screen.dart';
import 'package:fiverr/screens/sign_in.dart';
import 'package:fiverr/screens/sign_up.dart';
import 'package:fiverr/screens/term_of_services.dart';
import 'package:fiverr/utils/custom_page_route.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  bool isLoggedIn = true;
  String name = "User Name";

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      //print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      //print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      //extendBody: true,

      //appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(color: Colors.white38),
        child: Column(
          children: [
            Container(
              height: size.height * 0.22,
              width: size.width,
              decoration: BoxDecoration(
                color: isLoggedIn
                    ? Colors.lightGreen[900]
                    : const Color(0xff999999),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30, left: 15, right: 15, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            child: const Icon(
                              Icons.person_rounded,
                              size: 50,
                              color: Colors.blueGrey,
                            ),
                            backgroundColor: isLoggedIn
                                ? Colors.green[300]
                                : Colors.grey[200],
                            radius: 30.0,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                isLoggedIn ? name : "User",
                                style: TextStyle(
                                    fontFamily: "Tofino",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey[200]),
                              ),
                              Text(
                                isLoggedIn
                                    ? "Personal balance: \$0"
                                    : "Welcome to Fiverr",
                                style: TextStyle(
                                    fontFamily: "Tofino",
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.grey[200]),
                              ),
                              // const SizedBox(
                              //   height: 15,
                              // ),
                              // Material(
                              //   borderRadius: BorderRadius.circular(25),
                              //   color: Colors.lightBlue[200],
                              //   child: InkWell(
                              //     onTap: () => {},
                              //     child: AnimatedContainer(
                              //       duration: Duration(seconds: 1),
                              //       height: 50,
                              //       width: 160,
                              //       alignment: Alignment.center,
                              //       child: const Text(
                              //         "Edit Profile",
                              //         style: TextStyle(
                              //             fontSize: 18, color: Colors.white),
                              //       ),
                              //     ),
                              //   ),
                              // )
                            ],
                          ),
                          const Spacer(),
                          isLoggedIn
                              ? InkWell(
                                  // onTap: () {
                                  //   Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             const SettingsScreen()),
                                  //   );
                                  // },
                                  onTap: () {
                                    Navigator.of(context).push(
                                      CustomPageRoute(
                                          child: const SettingsScreen()),
                                    );
                                  },
                                  child: Icon(
                                    Icons.settings_outlined,
                                    size: 40,
                                    color: Colors.blueGrey[400],
                                  ),
                                )
                              : const SizedBox(
                                  width: 5,
                                ),
                          const SizedBox(
                            width: 5,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            isLoggedIn
                ?
                //if logged in ..........................................
                Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            //height: 60,
                            width: size.width,
                            color: Colors.grey[100],
                            child: Text(
                              "My Fiverr",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.blueGrey[850],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const SavedGigs()),
                              //   );
                              // },
                              onTap: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(child: const SavedGigs()),
                                );
                              },
                              child: const CustomListTile(
                                  myicon: Icons.favorite_border_outlined,
                                  mytext: "Saved Gigs"),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const MyInterests()),
                              //   );
                              // },
                              onTap: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(child: const MyInterests(),direction: AxisDirection.down),
                                );
                              },
                              child: const CustomListTile(
                                  myicon: Icons.inbox_outlined,
                                  mytext: "My Interests"),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            //height: 60,
                            width: size.width,
                            color: Colors.grey[100],
                            child: Text(
                              "Buying",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.blueGrey[850],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const ManageOrders()),
                              //   );
                              // },
                              onTap: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(child: const ManageOrders()),
                                );
                              },
                              child: const CustomListTile(
                                  myicon: Icons.assignment_outlined,
                                  mytext: "Manage orders"),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const PostRequest()),
                              //   );
                              // },
                              onTap: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(child: const PostRequest(),direction: AxisDirection.down),
                                );
                              },
                              child: const CustomListTile2(
                                  myicon: Icons.description_outlined,
                                  mytext: "Post a request"),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const ManageRequests()),
                              //   );
                              // },
                              onTap: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(
                                      child: const ManageRequests()),
                                );
                              },
                              child: const CustomListTile(
                                  myicon: Icons.border_color_outlined,
                                  mytext: "Manage requests"),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            //height: 60,
                            width: size.width,
                            color: Colors.grey[100],
                            child: Text(
                              "General",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.blueGrey[850],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                ListTile(
                                  title: Row(
                                    children: [
                                      Icon(
                                        Icons.circle_outlined, //icondate
                                        size: 24,
                                        color: Colors.grey[400],
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        "Show online status", //textdata
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey[850],
                                        ),
                                      ),
                                      const Spacer(),
                                      // ignore: prefer_const_constructors
                                      Switch(
                                        onChanged: toggleSwitch,
                                        value: isSwitched,
                                        activeColor: Colors.lightGreen[800],
                                        activeTrackColor:
                                            Colors.lightGreen[400],
                                        inactiveThumbColor: Colors.grey[500],
                                        inactiveTrackColor: Colors.grey[300],
                                      ),
                                    ],
                                  ),
                                ),
                                // Center(
                                //   child: Container(
                                //       height: 1, width: size.width * 0.95, color: Colors.grey[850]),
                                // ),
                              ],
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const Payments()),
                              //   );
                              // },
                              onTap: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(child: const Payments()),
                                );
                              },
                              child: const CustomListTile(
                                  myicon: Icons.payment_outlined,
                                  mytext: "payments"),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              onTap: () {},
                              child: const CustomListTile2(
                                  myicon: Icons.supervisor_account,
                                  mytext: "Invite friends"),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const BecomeSeller()),
                              //   );
                              // },
                              onTap: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(child: const BecomeSeller()),
                                );
                              },
                              child: const CustomListTile(
                                  myicon: Icons.error,
                                  mytext: "Become a seller"),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const Support()),
                              //   );
                              // },
                              onTap: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(child: const Support()),
                                );
                              },
                              child: const CustomListTile(
                                  myicon: Icons.support_outlined,
                                  mytext: "Support"),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  )
                //when not logged in...........................................
                : Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const SignUp()),
                              //   );
                              // },
                              onTap: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(child: const SignUp()),
                                );
                              },
                              child: ListTile(
                                title: Row(
                                  children: [
                                    Icon(
                                      Icons.control_point,
                                      size: 24,
                                      color: Colors.indigoAccent[700],
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      "Join Fiverr",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.indigoAccent[700],
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const SignIn()),
                              //   );
                              // },
                              onTap: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(child: const SignIn()),
                                );
                              },
                              child: ListTile(
                                title: Row(
                                  children: [
                                    Icon(
                                      Icons.shortcut_outlined,
                                      size: 24,
                                      color: Colors.grey[400],
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      "Sign in",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[850],
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            //height: 60,
                            width: size.width,
                            color: Colors.grey[100],
                            child: Text(
                              "General",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.blueGrey[850],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const MyInterests()),
                              //   );
                              // },
                              onTap: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(child: const MyInterests(),direction: AxisDirection.down),
                                );
                              },
                              child: const CustomListTile(
                                  myicon: Icons.assignment_outlined,
                                  mytext: "My interests"),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              onTap: () {},
                              child: const CustomListTile2(
                                  myicon: Icons.description_outlined,
                                  mytext: "Language"),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              onTap: () {},
                              child: const CustomListTile2(
                                  myicon: Icons.monetization_on,
                                  mytext: "Currency"),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const AboutUs()),
                              //   );
                              // },
                              onTap: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(child: const AboutUs()),
                                );
                              },
                              child: const CustomListTile(
                                  myicon: Icons.border_color_outlined,
                                  mytext: "About"),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const TermOfServices()),
                              //   );
                              // },
                              onTap: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(
                                      child: const TermOfServices()),
                                );
                              },
                              child: const CustomListTile(
                                  myicon: Icons.payment_outlined,
                                  mytext: "Terms of Services"),
                            ),
                          ),
                          Material(
                            child: InkWell(
                              splashColor: Colors.grey,
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const PrivacyPolicy()),
                              //   );
                              // },
                              onTap: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(child: const PrivacyPolicy()),
                                );
                              },
                              child: const CustomListTile2(
                                  myicon: Icons.supervisor_account,
                                  mytext: "Privacy Policy"),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {Key? key,
      required this.myicon,
      required this.mytext,
      GestureTapCallback? onTap})
      : super(key: key);
  final IconData myicon;
  final String mytext;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          ListTile(
            title: Row(
              children: [
                Icon(
                  myicon, //icondate
                  size: 24,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10),
                Text(
                  mytext, //textdata
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[850],
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.chevron_right,
                  size: 26,
                  color: Colors.grey[400],
                )
              ],
            ),
          ),
          // Center(
          //   child: Container(
          //       height: 1, width: size.width * 0.95, color: Colors.grey[850]),
          // ),
        ],
      ),
    );
  }
}

class CustomListTile2 extends StatelessWidget {
  const CustomListTile2(
      {Key? key,
      required this.myicon,
      required this.mytext,
      GestureTapCallback? onTap})
      : super(key: key);
  final IconData myicon;
  final String mytext;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          ListTile(
            title: Row(
              children: [
                Icon(
                  myicon, //icondate
                  size: 24,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10),
                Text(
                  mytext, //textdata
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[850],
                  ),
                ),
                const Spacer(),
                // Icon(
                //   Icons.chevron_right,
                //   size: 26,
                //   color: Colors.grey[400],
                // )
              ],
            ),
          ),
          // Center(
          //   child: Container(
          //       height: 1, width: size.width * 0.95, color: Colors.grey[850]),
          // ),
        ],
      ),
    );
  }
}
