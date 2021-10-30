import 'package:cached_network_image/cached_network_image.dart';
import 'package:fiverr/models/category_model.dart';
import 'package:fiverr/models/popular_services_model.dart';
import 'package:fiverr/screens/insideHomeScreenCard.dart/service_screen.dart';
import 'package:fiverr/utils/custom_page_route.dart';
import 'package:flutter/material.dart';

class RecentlyViewedServiceCard extends StatefulWidget {
  //final PopularServicesModel popularService;
  final CategoryModel category;
  const RecentlyViewedServiceCard({Key? key, required this.category})
      : super(key: key);

  @override
  State<RecentlyViewedServiceCard> createState() =>
      _RecentlyViewedServiceCardState();
}

class _RecentlyViewedServiceCardState extends State<RecentlyViewedServiceCard> {
  @override
  Widget build(BuildContext context) {
    //var category;
    return Material(
      child: InkWell(
        //  onTap: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => const ServiceScreen()),
        //     );
        //   },
        onTap: () {
          Navigator.of(context).push(
            CustomPageRoute(
                child: ServiceScreen(
              category: widget.category,
            )),
          );
        },
        child: Container(
          height: 250,
          padding: const EdgeInsets.symmetric(horizontal: 6.5, vertical: 5.0),
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Container(
            height: 250,
            width: 110,
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
                  height: 100,
                  width: 110,
                  child: CachedNetworkImage(
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                    imageUrl: widget.category.icon,
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
                      size: 50,
                      color: Colors.red,
                    ),
                  ),
                  decoration: BoxDecoration(
                    // image: DecorationImage(
                    //   image: ExactAssetImage(popularService.image!),
                    //   fit: BoxFit.cover,
                    // ),
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange[300],
                        size: 14,
                      ),
                      Text(
                        " 4.9 ",
                        style: TextStyle(
                          fontFamily: "workSans",
                          color: Colors.orange[300],
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        " (5) ",
                        style: TextStyle(
                          fontFamily: "workSans",
                          color: Colors.grey[350],
                          fontSize: 12,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.grey[350],
                        size: 16,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  child: Container(
                    width: 90,
                    child: Text(
                      widget.category.label,
                      softWrap: true,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: "workSans",
                        color: Colors.grey[800],
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "From ",
                          style: TextStyle(
                            fontFamily: "workSans",
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "\$",
                          style: TextStyle(
                              fontFamily: "workSans",
                              fontSize: 12,
                              color: Colors.blueGrey[850]),
                        ),
                        Text(
                          "79",
                          style: TextStyle(
                              fontFamily: "workSans",
                              fontSize: 12,
                              color: Colors.blueGrey[850]),
                        )
                      ],
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
