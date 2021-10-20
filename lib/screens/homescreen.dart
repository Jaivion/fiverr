import 'package:fiverr/helpers/search_bottom_sheet.dart';
import 'package:fiverr/models/market_place_model.dart';
import 'package:fiverr/models/popular_services_model.dart';
import 'package:fiverr/widgets/market_place_card.dart';
import 'package:fiverr/widgets/popular_service_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _showSearchSheet(BuildContext ctx, int index) {
    int _currentBtmSheetIndex = index;
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
              fontSize: 30,
              //fontFamily: "Ludo",
              fontWeight: FontWeight.bold,
              color: Colors.black87),
        ),
        actions: [
          Material(
            child: InkWell(
              onTap: () {
                //BottomNav.setIndex(2);
              },
              child: const Icon(
                Icons.widgets,
                color: Colors.black87,
                size: 26,
              ),
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
                          onTap: ()=> _showSearchSheet(context, 0),
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
                                  style: TextStyle(color: Colors.grey[500]),
                                ),
                              ],
                            ),
                            //                         child: TextField(
                            //                           //style: theme.textTheme.bodyText1,
                            //                           keyboardType: TextInputType.text,
                            //                           autofocus: false,
                            //                           autocorrect: false,
                            //                           decoration: InputDecoration(
                            //                             //fillColor: theme.accentColor,
                            //                             border: InputBorder.none,
                            //                             enabledBorder: InputBorder.none,
                            //                             focusedBorder: InputBorder.none,
                            //                             hintText: 'Search services',
                            //                             //hintStyle: theme.textTheme.subtitle2,
                            //                             prefixIcon: IconButton(
                            //                               icon: const Icon(
                            //                                 Icons.search,
                            //                                 size: 20,
                            //                               ),
                            //                               onPressed: () {
                            //                                 //showSearch(context: context, delegate: SearchPage());
                            //                               },
                            //                             ),
                            // //                            focusColor: kBackgroundColor2,
                            //                             contentPadding: const EdgeInsets.symmetric(
                            //                               horizontal: 20.0,
                            //                               vertical: 15.0,
                            //                             ),
                            //                           ),
                            //                         ),
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0),
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0),
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
                                  height: 260,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: popularServicesList.length,
                                    itemBuilder: (context, index) {
                                      PopularServicesModel
                                          popularServiceList =
                                          popularServicesList[index];
                                      return PopularServiceCard(
                                          popularService:
                                              popularServiceList);
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
