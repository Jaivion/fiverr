import 'package:fiverr/models/categories_interests_model.dart';
import 'package:fiverr/screens/sub_category.dart';
import 'package:fiverr/utils/custom_page_route.dart';
import 'package:flutter/material.dart';

class SearchInterestTile extends StatelessWidget {
  final CategoriesInterestModel interest;

  const SearchInterestTile({Key? key, required this.interest})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => const SubCategoryScreen()),
      //   );
      // },
      onTap: () {
        Navigator.of(context).push(
          CustomPageRoute(child: const SubCategoryScreen()),
        );
      },
      child: Container(
        width: size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Center(
                    child: Icon(
                      interest.icon!,
                      color: Colors.blueGrey[800],
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        interest.title!,
                        style: TextStyle(
                            fontFamily: "workSans",
                            fontSize: 20,
                            //fontFamily: "Futura",
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[800]),
                      ),
                      Text(
                        interest.description!,
                        style: TextStyle(
                            fontFamily: "workSans",
                            fontSize: 16,
                            //fontFamily: "Futura",
                            color: Colors.blueGrey[700]),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                  height: 1, width: size.width, color: Colors.grey[400]),
            ),
          ],
        ),
      ),
    );
  }
}
