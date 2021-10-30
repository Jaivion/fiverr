import 'package:cached_network_image/cached_network_image.dart';
import 'package:fiverr/models/category_model.dart';
import 'package:fiverr/models/market_place_model.dart';
import 'package:fiverr/screens/insideHomeScreenCard.dart/service_card_screen.dart';
import 'package:fiverr/utils/custom_page_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketPlaceCard extends StatelessWidget {
  //final MarketPlaceModel featuredService;
  final CategoryModel category;
  const MarketPlaceCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5.0),
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
          onTap: () {
            Navigator.of(context).push(
              CustomPageRoute(child: CardScreen()),
            );
          },
          child: Container(
            //height: 60,
            // width: 120,
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
                  // height: 60,
                  // width: 60,
                  decoration: const BoxDecoration(
                    // image: DecorationImage(
                    //   image: ExactAssetImage(featuredService.image!),
                    //   fit: BoxFit.cover,
                    // ),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  child: CachedNetworkImage(
                    width: 95,
                    height: 95,
                    fit: BoxFit.cover,
                    imageUrl: category.icon,
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            CircularProgressIndicator(
                                value: downloadProgress.progress),
                    errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                      size: 20,
                      color: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        //featuredService.description!,
                        category.label,
                        //textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: "workSans",
                            color: Colors.grey[800],
                            fontSize: 12,
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
