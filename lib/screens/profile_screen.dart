import 'package:fiverr/screens/insideProfile/saved_gigs.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              decoration: const BoxDecoration(
                color: Color(0xff999999),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30, left: 15, right: 15, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            child: const Icon(
                              Icons.person_rounded,
                              size: 50,
                              color: Colors.blueGrey,
                            ),
                            backgroundColor: Colors.grey[200],
                            radius: 30.0,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User",
                                style: TextStyle(
                                    fontFamily: "Tofino",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey[200]),
                              ),
                              Text(
                                "Welcome to Fiverr",
                                style: TextStyle(
                                    fontFamily: "Tofino",
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.grey[200]),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
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
                          // Icon(
                          //   Icons.settings,
                          //   size: 40,
                          //   color: Colors.blueGrey[700],
                          // ),
                          // const SizedBox(
                          //   width: 5,
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: const [
                  CustomListTile(
                      myicon: Icons.favorite_border_outlined,
                      mytext: "Saved Gigs"),
                  CustomListTile(
                      myicon: Icons.inbox_outlined, mytext: "My Interests"),
                  CustomListTile(
                      myicon: Icons.assignment_outlined,
                      mytext: "Manage orders"),
                  CustomListTile(
                      myicon: Icons.description_outlined,mytext: "Post a request"),
                  CustomListTile(
                      myicon: Icons.border_color_outlined, mytext: "Manage requests"),
                  CustomListTile(
                      myicon: Icons.payment_outlined,mytext: "payments"),
                  CustomListTile(
                      myicon: Icons.supervisor_account,
                      mytext: "Invite friends"),
                  CustomListTile(
                      myicon: Icons.error, mytext: "Become a seller"),
                  CustomListTile(myicon: Icons.support_outlined, mytext: "Support"),
                ],
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
