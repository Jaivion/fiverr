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
            elevation: 1.0,
            shadowColor: Colors.grey[400],
            title:  Text(
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
            bottom:  TabBar(
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
          body: const TabBarView(
            children: [
              Text("Categories"),
              Text("Interests"),
            ],
          ),
        ),
      ),
    );
  }
}
