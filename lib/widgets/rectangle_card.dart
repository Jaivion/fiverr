import 'package:fiverr/models/market_place_model.dart';
import 'package:fiverr/screens/insideHomeScreenCard.dart/card_screen.dart';
import 'package:flutter/material.dart';

class RectangleCard extends StatelessWidget {
  // final MarketPlaceModel featuredService;
  const RectangleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      //height: 200,
      //width: size.width * 0.8,
      padding: const EdgeInsets.symmetric(horizontal: 6.5, vertical: 5.0),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ), //hello
      child: Material(
        child: InkWell(
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => CardScreen()),
          //   );
          // },
          child: Container(
            height: size.height * 0.18,
            width: size.width * 0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(1.0, 1.0),
                  blurRadius: 2.0,
                ),
              ],
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  height: size.height * 0.18,
                  width: size.width * 0.48,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          ExactAssetImage('assets/images/services/boycut.jpg'),
                      fit: BoxFit.cover,
                    ),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 3),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange[300],
                            size: 16,
                          ),
                          Text(
                            " 4.9 ",
                            style: TextStyle(
                              color: Colors.orange[300],
                            ),
                          ),
                          Text(
                            " (5) ",
                            style: TextStyle(
                              color: Colors.grey[350],
                            ),
                          ),
                          const SizedBox(width: 80),
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.grey[350],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Description...",
                            maxLines: 3,
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        alignment: Alignment.bottomRight,
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(width: 100,),
                            const Text("From "),
                            Text(
                              "\$",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.blueGrey[850]),
                            ),
                            Text(
                              "79",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.blueGrey[850]),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
