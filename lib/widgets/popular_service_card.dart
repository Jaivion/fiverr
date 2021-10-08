import 'package:fiverr/models/popular_services_model.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

class PopularServiceCard extends StatelessWidget {
  final PopularServicesModel popularService;
  const PopularServiceCard({Key? key, required this.popularService})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 6.5, vertical: 5.0),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
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
                  image: ExactAssetImage(popularService.image!),
                  fit: BoxFit.cover,
                ),
                color: Colors.grey[300],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
            ),
            Text(
              popularService.description!,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  // Text(
                  //   popularService.description!,
                  //   overflow: TextOverflow.ellipsis,
                  //   style: TextStyle(
                  //     color: Colors.grey[800],
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.bold
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
