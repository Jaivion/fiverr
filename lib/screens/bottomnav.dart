import 'dart:async';
import 'dart:ffi';

import 'package:fiverr/screens/homescreen.dart';
import 'package:fiverr/screens/message_screen.dart';
import 'package:fiverr/screens/notification_screen.dart';
import 'package:fiverr/screens/profile_screen.dart';
import 'package:fiverr/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final tabs = const [
    HomeScreen(),
    MessageScreen(),
    SearchScreen(),
    MyNotificationScreen(),
    ProfileScreen(),
  ];

bool dialogShown = false;
  @override
  void initState() {
    super.initState();
    if (dialogShown == false) {
      setState(() {
        dialogShown = true;
      });

      Timer(const Duration(seconds: 3), () => {openDialog()});
    }
  }
  void openDialog() {
    //await Future.delayed(const Duration(seconds: 1));
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: const Color(0xff1dbf73),
            title: const Center(
              child: Text("Hi! Welcome",
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            contentPadding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            content: Container(
              color: Colors.white,
              width: 300,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Icon(
                      Icons.face_outlined,
                      color: Color(0xff1dbf73),
                      size: 80,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Text(
                      "Great!",
                      style: TextStyle(fontSize: 20),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }


  // void setIndex(int value) {
  //   setState(() {
  //     _currentIndex = value;
  //   });
  // }
  // VoidCallback callBack(int value) {
  //   setState(() {
  //     _currentIndex = value;
  //   });
  // }
  //final CupertinoTabController _controller = CupertinoTabController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // CupertinoTabScaffold(
      //   //controller: _controller,
      //   tabBar: CupertinoTabBar(
      //     activeColor: Colors.green[400],
      //     inactiveColor: Colors.black54,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home_outlined,
      //         ),
      //         //label: "Home",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.email_outlined,
      //         ),
      //         //label: "Message",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.search_outlined,
      //         ),
      //         //label: "Search",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.notifications_none_outlined),
      //         //label: "Notification",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.account_circle_outlined,
      //         ),
      //         //label: "Profile",
      //       ),
      //     ],
      //   ),
      //   tabBuilder: (context, index) {
      //     switch (index) {
      //       case 0:
      //         return CupertinoTabView(
      //           builder: (context) {
      //             return const CupertinoPageScaffold(child: HomeScreen());
      //           },
      //         );
      //       case 1:
      //         return CupertinoTabView(
      //           builder: (context) {
      //             return const CupertinoPageScaffold(child: MessageScreen());
      //           },
      //         );
      //       case 2:
      //         return CupertinoTabView(
      //           builder: (context) {
      //             return const CupertinoPageScaffold(child: SearchScreen());
      //           },
      //         );
      //       case 3:
      //         return CupertinoTabView(
      //           builder: (context) {
      //             return const CupertinoPageScaffold(
      //                 child: MyNotificationScreen());
      //           },
      //         );
      //       case 4:
      //         return CupertinoTabView(
      //           builder: (context) {
      //             return const CupertinoPageScaffold(child: ProfileScreen());
      //           },
      //         );
      //       default:
      //         return CupertinoTabView(
      //           builder: (context) {
      //             return const CupertinoPageScaffold(child: HomeScreen());
      //           },
      //         );
      //     }
      //   },

      body: tabs[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        //mouseCursor: ,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 28,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green[400],
        unselectedItemColor: Colors.grey[850],
        selectedLabelStyle: TextStyle(color: Colors.green[400]),
        unselectedLabelStyle: TextStyle(color: Colors.grey[850]),
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email_outlined,
            ),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: "Profile",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
