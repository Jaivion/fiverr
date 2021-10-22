import 'package:fiverr/models/categories_category_model.dart';
import 'package:fiverr/screens/insideHomeScreenCard.dart/service_card_screen.dart';
import 'package:flutter/material.dart';

class SubCategoryTile extends StatelessWidget {
  final CategoriesCategoryModel categories;

  const SubCategoryTile({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CardScreen()),
              );
            },
            child: ListTile(
              title: Row(
                children: [
                  const SizedBox(width: 10),
                  Text(
                    categories.title!, //textdata
                    style: TextStyle(
                      fontFamily: "workSans",
                      //fontFamily: "Futura",
                      fontSize: 16,
                      color: Colors.grey[850],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.chevron_right,
                    size: 26,
                    color: Colors.grey[400],
                  )
                ],
              ),
            ),
          ),
          // Center(
          //   child: Container(
          //       height: 1, width: size.width, color: Colors.grey[400]),
          // ),
        ],
      ),

      // child: Container(
      //   width: size.width,
      //   child: Column(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Row(
      //           children: [
      //             Center(
      //               child: Icon(
      //                 categories.icon!,
      //                 color: Colors.blueGrey[800],
      //                 size: 50,
      //               ),
      //             ),
      //             const SizedBox(
      //               width: 10,
      //             ),
      //             Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(
      //                   categories.title!,
      //                   style: TextStyle(
      //                       fontSize: 20,
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.blueGrey[800]),
      //                 ),
      //                 Text(
      //                   categories.description!,
      //                   style: TextStyle(
      //                       fontSize: 16, color: Colors.blueGrey[700]),
      //                 )
      //               ],
      //             )
      //           ],
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 10,
      //       ),
      //       Center(
      //         child: Container(
      //             height: 1, width: size.width, color: Colors.grey[400]),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
