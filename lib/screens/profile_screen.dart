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
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white60,
      ),
      child: Column(
        children: [
          Container(
            height: size.height * 0.20,
            width: size.width,
            decoration: const BoxDecoration(
              color: Colors.white70,
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: const Icon(Icons.person_rounded,size: 50,color: Colors.blueGrey,),
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
                              "Din Ambross",
                              style: TextStyle(
                                  fontFamily: "Tofino",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey[200]),
                            ),
                            Text(
                              "Personal balance \$0",
                              style: TextStyle(
                                  fontFamily: "Tofino",
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.grey[500]),
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
                        Icon(Icons.settings,size: 40,color: Colors.blueGrey[700],),
                        const SizedBox(width: 5,)
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
                    myicon: Icons.luggage_rounded,
                    mytext: "Bookings & Appointments"),
                CustomListTile(
                    myicon: Icons.local_offer, mytext: "Packages & Offers"),
                CustomListTile(
                    myicon: Icons.favorite_border_rounded,
                    mytext: "Favourite Barbers & Salon"),
                CustomListTile(
                    myicon: Icons.wallet_travel, mytext: "Payment Methods"),
                CustomListTile(
                    myicon: Icons.article_sharp, mytext: "Payment History"),
                CustomListTile(
                    myicon: Icons.keyboard_alt, mytext: "Change Password"),
                CustomListTile(
                    myicon: Icons.supervisor_account,
                    mytext: "Invite Friends"),
                CustomListTile(myicon: Icons.error, mytext: "About us"),
                CustomListTile(myicon: Icons.logout, mytext: "Logout"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key, required this.myicon, required this.mytext})
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
                  size: 28,
                  color: Colors.green[400],
                ),
                const SizedBox(width: 10),
                Text(
                  mytext, //textdata
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[500],
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_right_sharp,
                  size: 20,
                  color: Colors.blueGrey[300],
                )
              ],
            ),
          ),
          Center(
            child: Container(
                height: 1, width: size.width * 0.95, color: Colors.grey[850]),
          ),
        ],
      ),
    );
  }
}
