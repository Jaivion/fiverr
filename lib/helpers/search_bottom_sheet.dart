import 'package:fiverr/models/category_model.dart';
import 'package:fiverr/models/market_place_model.dart';
import 'package:fiverr/models/popular_services_model.dart';
import 'package:fiverr/providers/category_provider.dart';
import 'package:fiverr/widgets/popular_service_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchBottomSheet extends StatefulWidget {
  const SearchBottomSheet({Key? key}) : super(key: key);

  @override
  _SearchBottomSheetState createState() => _SearchBottomSheetState();
}

class _SearchBottomSheetState extends State<SearchBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 3.0,
            shadowColor: Colors.grey[400],
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.grey[850],
            ),
            title: TextField(
              keyboardType: TextInputType.text,
              style: const TextStyle(fontSize: 18),
              cursorColor: const Color(0xff1dbf73),
              cursorHeight: 24,
              autofocus: false,
              autocorrect: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Search services',
                hintStyle: TextStyle(fontSize: 18, color: Colors.grey[500]),
                //focusColor: kBackgroundColor2,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 15.0,
                ),
              ),
            ),
            bottom: TabBar(
              indicatorColor: const Color(0xff1dbf73),
              labelColor: const Color(0xff1dbf73),
              unselectedLabelColor: Colors.grey[500],
              tabs: const [
                Tab(
                  child: Text(
                    "Gigs",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Tab(
                  child: Text(
                    "Sellers",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              //Text("Gigs"),
              Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Recently Viewed Gigs",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "Manage",
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
                              height: 10,
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
                    )
                  ],
                ),
              ),

              //Text("Sellers"),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
