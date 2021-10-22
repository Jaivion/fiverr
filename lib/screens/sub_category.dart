import 'package:fiverr/helpers/search_bottom_sheet.dart';
import 'package:fiverr/models/categories_category_model.dart';
import 'package:fiverr/widgets/sub_category_tile.dart';
import 'package:flutter/material.dart';

class SubCategoryScreen extends StatefulWidget {
  const SubCategoryScreen({Key? key}) : super(key: key);

  @override
  _SubCategoryScreenState createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
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
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 3.0,
            shadowColor: Colors.grey[400],
            //title: Icon(Icons.arrow_back),
            actions: [
              const SizedBox(
                width: 15,
              ),
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black87,
                  size: 26,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.grey[850],
              ),
              // Icon(
              //   Icons.arrow_back,
              //   color: Colors.black87,
              //   size: 26,
              // ),
              const Spacer(),
              InkWell(
                onTap: () => _showSearchSheet(context, 0),
                child: const Icon(
                  Icons.search,
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
                                  fontFamily: "workSans",
                                  //fontFamily: "Tofino",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.grey[800]),
                            ),
                            Text(
                              "Welcome to Fiverr",
                              style: TextStyle(
                                  fontFamily: "workSans",
                                  //fontFamily: "Tofino",
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
