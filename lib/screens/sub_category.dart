import 'package:fiverr/models/categories_category_model.dart';
import 'package:fiverr/models/categories_interests_model.dart';
import 'package:fiverr/widgets/search_category_tile.dart';
import 'package:fiverr/widgets/search_interest_tile.dart';
import 'package:fiverr/widgets/sub_category_tile.dart';
import 'package:flutter/material.dart';

class SubCategoryScreen extends StatefulWidget {
  const SubCategoryScreen({Key? key}) : super(key: key);

  @override
  _SubCategoryScreenState createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
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
            //title: Icon(Icons.arrow_back),
            actions: const [
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.arrow_back,
                color: Colors.black87,
                size: 26,
              ),
              Spacer(),
              Icon(
                Icons.search,
                color: Colors.black87,
                size: 26,
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          body: Container(
            child: Column(
              children: [
                Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 30, left: 15, right: 15, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.home_outlined,
                              color: Colors.black54,
                              size: 50,
                            ),
                            Text(
                              "User",
                              style: TextStyle(
                                  fontFamily: "Tofino",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey[800]),
                            ),
                            Text(
                              "Welcome to Fiverr",
                              style: TextStyle(
                                  fontFamily: "Tofino",
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
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
                        return SubCategoryTile(
                          categories: categoriesData,
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
