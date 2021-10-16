import 'package:fiverr/models/categories_category_model.dart';
import 'package:fiverr/models/categories_interests_model.dart';
import 'package:fiverr/widgets/search_category_tile.dart';
import 'package:fiverr/widgets/search_interest_tile.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
            title: Text(
              "Categories",
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
            actions: const [
              Icon(
                Icons.search,
                color: Colors.black87,
                size: 26,
              ),
              SizedBox(
                width: 15,
              ),
            ],
            bottom: TabBar(
              indicatorColor: const Color(0xff1dbf73),
              labelColor: const Color(0xff1dbf73),
              unselectedLabelColor: Colors.grey[500],
              tabs: const [
                Tab(
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Tab(
                  child: Text(
                    "Interest",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              //Text("Categories"),
              Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        //height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: searchCategoryList.length,
                          itemBuilder: (context, index) {
                            CategoriesCategoryModel categoriesData =
                                searchCategoryList[index];
                            return SearchCategoryTile(
                              categories: categoriesData,
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //Text("Interests"),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Your interest",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey[800]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Choose your interests for a better discovery experience.",
                            style: TextStyle(
                                fontSize: 16, color: Colors.blueGrey[700]),
                            softWrap: true,
                          ),
                          const SizedBox(
                            height: 20,
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
                                  "Choose Interests",
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            "You may also like",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey[800]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        //height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          
                          itemCount: searchInterestList.length,
                          itemBuilder: (context, index) {
                            CategoriesInterestModel interestsData =
                                searchInterestList[index];

                            return SearchInterestTile(
                              interest: interestsData,
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
