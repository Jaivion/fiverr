import 'package:fiverr/models/market_place_model.dart';
import 'package:fiverr/screens/insideHomeScreenCard.dart/card_screen.dart';
import 'package:flutter/material.dart';

class MarketPlaceCard extends StatelessWidget {
  final MarketPlaceModel featuredService;
  const MarketPlaceCard({Key? key, required this.featuredService})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 6.5, vertical: 5.0),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ), //hello
      child: Material(
        child: InkWell(
          onTap: () {
            Navigator.push( 
              context,
              MaterialPageRoute(builder: (context) => CardScreen()),
            );
          },
          child: Container(
            height: 180,
            width: 160,
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
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage(featuredService.image!),
                      fit: BoxFit.cover,
                    ),
                    color: const Color(0xffffffff),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        featuredService.description!,
                        //textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


