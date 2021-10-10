//import 'package:fiverr/models/popular_services_model.dart';
import 'package:fiverr/models/market_place_model.dart';
import 'package:fiverr/models/popular_services_model.dart';
import 'package:fiverr/widgets/market_place_card.dart';
import 'package:fiverr/widgets/popular_service_card.dart';
//import 'package:fiverr/widgets/popular_service_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      //extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        shadowColor: Colors.grey[400],
        title: const Text(
          "fiverr.",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        actions: const [
          Icon(
            Icons.widgets,
            color: Colors.black87,
            size: 26,
          ),
          SizedBox(
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
          // Container(
          //   padding:
          //       const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
          //   width: double.maxFinite,
          //   height: 100,
          //   child: Row(
          //     children: [
          //       const Text(
          //         "fiverr",
          //         style: TextStyle(
          //             fontSize: 30,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.black54),
          //       ),
          //       Text(
          //         ".",
          //         style: TextStyle(
          //             fontSize: 30,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.green[400]),
          //       ),
          //       const Spacer(),
          //       const Icon(
          //         Icons.widgets,
          //         color: Colors.black54,
          //       ),
          //     ],
          //   ),
          // ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 50,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black45,
                        )),
                        child: TextField(
                          //style: theme.textTheme.bodyText1,
                          keyboardType: TextInputType.text,
                          autofocus: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            //fillColor: theme.accentColor,
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: 'Search services',
                            //hintStyle: theme.textTheme.subtitle2,
                            prefixIcon: IconButton(
                              icon: const Icon(
                                Icons.search,
                                size: 20,
                              ),
                              onPressed: () {
                                //showSearch(context: context, delegate: SearchPage());
                              },
                            ),
//                            focusColor: kBackgroundColor2,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 15.0,
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
                                  "Explore the Marketplace",
                                  style: TextStyle(
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
                          Container(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ), 
                                Container(
                                  height: 200,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: featuredServicesList.length,
                                    itemBuilder: (context, index) {
                                      MarketPlaceModel featuredServices =
                                          featuredServicesList[index];
                                      return MarketPlaceCard(
                                        featuredService: featuredServices,
                                      );
                                    },
                                  ),
                                )
                              ],
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
                                  "Popular Services",
                                  style: TextStyle(
                                    color: Colors.grey[850],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "see all",
                                  style: TextStyle(
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
                                  height: 220,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: popularServicesList.length,
                                    itemBuilder: (context, index) {
                                      PopularServicesModel popularServiceList =
                                          popularServicesList[index];
                                      return PopularServiceCard(
                                          popularService: popularServiceList);
                                    },
                                  ),
                                )
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
