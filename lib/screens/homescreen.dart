import 'dart:async';
import 'package:fiverr/helpers/search_bottom_sheet.dart';
import 'package:fiverr/models/category_model.dart';
import 'package:fiverr/models/market_place_model.dart';
import 'package:fiverr/models/popular_services_model.dart';
import 'package:fiverr/providers/category_provider.dart';
import 'package:fiverr/widgets/market_place_card.dart';
import 'package:fiverr/widgets/popular_service_card.dart';
import 'package:fiverr/widgets/recently_viewed_service_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? email;
  String? name;

  @override
  void initState() {
    super.initState();
    getUserEmail();
  }

  Future getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      email = prefs.getString('email');
      name = prefs.getString('name');
      if (email != null) {
        isLoggedIn = true;
      } else {
        isLoggedIn = false;
      }
    });
  }

  bool isSwitched = false;
  bool isLoginSwitched = false;
  var textValue = 'Switch is OFF';
  bool isLoggedIn = false;
  //String name = "User Name";
  void toggleLoginSwitch(bool value) {
    if (isLoginSwitched == false) {
      setState(() {
        isLoginSwitched = true;
        isLoggedIn = true;
      });
    } else {
      setState(() {
        isLoginSwitched = false;
        isLoggedIn = false;
      });
    }
  }

  // bool dialogShown = false;
  // @override
  // void initState() {
  //   super.initState();
  //   if (dialogShown == false) {
  //     setState(() {
  //       dialogShown = true;
  //     });

  //     Timer(const Duration(seconds: 3), () => {openDialog()});
  //   }
  // }
  // void openDialog() {
  //   //await Future.delayed(const Duration(seconds: 1));
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           backgroundColor: const Color(0xff1dbf73),
  //           title: const Center(
  //             child: Text("Hi! Welcome",
  //                 style: TextStyle(
  //                   color: Colors.white,
  //                 )),
  //           ),
  //           contentPadding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
  //           content: Container(
  //             color: Colors.white,
  //             width: 300,
  //             height: 200,
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               children: const [
  //                 Padding(
  //                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  //                   child: Icon(
  //                     Icons.face_outlined,
  //                     color: Color(0xff1dbf73),
  //                     size: 80,
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  //                   child: Text(
  //                     "Great!",
  //                     style: TextStyle(fontSize: 20),
  //                     softWrap: true,
  //                     textAlign: TextAlign.center,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }

  void _showSearchSheet(BuildContext ctx, int index) {
    int _currentBtmSheetIndex = index;
    // void btmIndex() {
    //   BottomNav.setIndex(2);
    // }
    const tabs = [
      SearchBottomSheet(),
    ];
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 10,
        backgroundColor: Colors.white,
        context: ctx,
        builder: (ctx) => Container(
              // width: double.infinity,
              // height: double.infinity,
              color: Colors.white54,
              alignment: Alignment.bottomCenter,
              //child: const Text('Breathe in... Breathe out...'),
              child: tabs[_currentBtmSheetIndex],
            ));
  }

  @override
  Widget build(BuildContext context) {
    // bool isLoggedIn = false;
    // bool isLoginSwitched = false;
    return Scaffold(
      //extendBodyBehindAppBar: false,
      //extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        shadowColor: Colors.grey[400],
        titleSpacing: 0.0,
        title: Image.asset('assets/icons/fusionblack.png'),
        actions: [
          InkWell(
            onTap: () {
              //BottomNav.setIndex(2);
            },
            child: const Icon(
              Icons.widgets,
              color: Colors.black87,
              size: 26,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xfcfcfcfc),
        ),
        child: Column(children: [
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Material(
                        child: InkWell(
                          onTap: () => _showSearchSheet(context, 0),
                          child: Container(
                            height: 50,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.grey.shade300,
                            )),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.search,
                                  size: 25,
                                  color: Colors.grey[500],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Search services",
                                  style: TextStyle(
                                      fontFamily: "workSans",
                                      color: Colors.grey[500]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  "Explore Service Providers",
                                  style: TextStyle(
                                    fontFamily: "workSans",
                                    color: Colors.grey[850],
                                    fontWeight: FontWeight.bold,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "see all",
                                  style: TextStyle(
                                    fontFamily: "workSans",
                                    color: Colors.green[400],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 130,
                                    child: ChangeNotifierProvider(
                                      create: (context) => CategoryProvider(),
                                      child: Builder(builder: (context) {
                                        final model =
                                            Provider.of<CategoryProvider>(
                                                context);
                                        final services = model.categories;
                                        print(
                                            "categorirs length ${services.length}  ");
                                        return ListView.builder(
                                          // scrollDirection: Axis.horizontal,
                                          // itemCount: featuredServicesList.length,
                                          // itemBuilder: (context, index) {
                                          //   MarketPlaceModel featuredServices =
                                          //       featuredServicesList[index];
                                          //   return MarketPlaceCard(
                                          //     featuredService: featuredServices,
                                          //   );
                                          // },
                                          scrollDirection: Axis.horizontal,
                                          itemCount: services.length,
                                          itemBuilder: (context, index) {
                                            CategoryModel categories =
                                                services[index];
                                            return MarketPlaceCard(
                                                category: categories);
                                          },
                                        );
                                      }),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  "Explore Services",
                                  style: TextStyle(
                                    fontFamily: "workSans",
                                    color: Colors.grey[850],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "see all",
                                  style: TextStyle(
                                    fontFamily: "workSans",
                                    color: Colors.green[400],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 260,
                                  child: ChangeNotifierProvider(
                                    create: (context) => CategoryProvider(),
                                    child: Builder(builder: (context) {
                                      final model =
                                          Provider.of<CategoryProvider>(
                                              context);
                                      final services = model.categories;
                                      print(
                                          "categorirs length ${services.length}  ");
                                      return ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: services.length,
                                        itemBuilder: (context, index) {
                                          CategoryModel category =
                                              services[index];
                                          return PopularServiceCard(
                                            category: category,
                                          );
                                        },
                                      );
                                    }),
                                  ),
                                )

                                // Container(
                                //   height: 260,
                                //   child: ListView.builder(
                                //     scrollDirection: Axis.horizontal,
                                //     itemCount: popularServicesList.length,
                                //     itemBuilder: (context, index) {
                                //       PopularServicesModel popularServiceList =
                                //           popularServicesList[index];
                                //       return PopularServiceCard(
                                //           popularService: popularServiceList);
                                //     },
                                //   ),
                                // )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    //const SizedBox(height: 10),
                    //if loged in
                    if (isLoggedIn)
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            width: double.maxFinite,
                            // alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(1.0, 2.0),
                                    blurRadius: 2.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Invite friends & get up to \$100",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "workSans",
                                      //fontFamily: "Futura",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey[800]),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Introduce your friends to the fastest way to get things done.",
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "workSans",
                                      //fontFamily: "Franklin gothic",
                                      fontSize: 14,
                                      color: Colors.blueGrey[700]),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(4),
                                  color: const Color(0xff1dbf73),
                                  child: InkWell(
                                    onTap: () => {},
                                    child: Container(
                                      height: 40,
                                      width: double.maxFinite,
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "Invite Friends",
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "workSans",
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),

                    //const SizedBox(height: 10),
                    if (isLoggedIn)
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Recently viewed & more",
                                    style: TextStyle(
                                      fontFamily: "workSans",
                                      color: Colors.grey[850],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "see all",
                                    style: TextStyle(
                                      fontFamily: "workSans",
                                      color: Colors.green[400],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 170,
                                    //padding: const EdgeInsets.only(left: 25),
                                    child: ChangeNotifierProvider(
                                      create: (context) => CategoryProvider(),
                                      child: Builder(builder: (context) {
                                        final model =
                                            Provider.of<CategoryProvider>(
                                                context);
                                        final services = model.categories;
                                        print(
                                            "categorirs length ${services.length}  ");
                                        return ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: services.length,
                                          itemBuilder: (context, index) {
                                            CategoryModel category =
                                                services[index];
                                            return RecentlyViewedServiceCard(
                                              category: category,
                                            );
                                          },
                                        );
                                      }),
                                    ),
                                  )
                                  // Container(
                                  //   height: 260,
                                  //   child: ListView.builder(
                                  //     scrollDirection: Axis.horizontal,
                                  //     itemCount: popularServicesList.length,
                                  //     itemBuilder: (context, index) {
                                  //       PopularServicesModel
                                  //           popularServiceList =
                                  //           popularServicesList[index];
                                  //       return PopularServiceCard(
                                  //           category,: popularServiceList);
                                  //     },
                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                  ]),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
