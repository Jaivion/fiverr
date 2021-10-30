import 'package:cached_network_image/cached_network_image.dart';
import 'package:fiverr/helpers/colors.dart';
import 'package:fiverr/models/completed_model.dart';
import 'package:fiverr/screens/complete_order_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:smooth_star_rating/smooth_star_rating.dart';

class CompletedOrderCard extends StatelessWidget {
  final CompletedModel? completedlists;

  const CompletedOrderCard({Key? key, this.completedlists}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.only(bottom: 15.0, left: 18.0, right: 18.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: theme.primaryColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width,
            height: 35.0,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
              ),
            ),
            child: Center(
                child: Text("Completed",
                    style: theme.textTheme.subtitle1!
                        .copyWith(color: kBackgroundLightColor))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: CachedNetworkImage(
                    imageUrl: completedlists!.user_details[0]['shop_image']!,
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                // Container(
                //   height: 50.0,
                //   width: 50.0,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(12.0),
                //     // image: DecorationImage(
                //     //   image: AssetImage(completedlists!.user_details!.shop_image!),
                //     //   fit: BoxFit.cover,
                //     // ),
                //   ),
                // ),
                SizedBox(width: 12.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(completedlists!.user_details[0]['shop_name'],
                          style: theme.textTheme.headline4),
                      SizedBox(height: 8.0),
                      Text(completedlists!.user_details[0]['shop_address'],
                          style: theme.textTheme.subtitle2),
                      Text(
                          '${completedlists!.schedule_date} - ${completedlists!.schedule_time}',
                          style: theme.textTheme.subtitle2),
                      SizedBox(height: 8.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // SmoothStarRating(
                          //   color: kYellowColor,
                          //   size: 17.0,
                          //   borderColor: theme.unselectedWidgetColor,
                          //   allowHalfRating: false,
                          //   rating: 4,
                          //   starCount: 5,
                          //   isReadOnly: true,
                          // ),
                          completedlists!.status == "COMPLETED"
                              ? Container()
                              : completedlists!.status == "CANCEL"
                                  ? Container()
                                  : GestureDetector(
                                      onTap: () {
                                        /*showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text(
                                      'Cancel Appointment!',
                                      textAlign: TextAlign.center,
                                      style:
                                      theme.textTheme.headline4,
                                    ),
                                    content: Text(
                                      'Are you sure you want to cancel your appointment?',
                                      textAlign: TextAlign.center,
                                      style:
                                      theme.textTheme.subtitle2,
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        child: Text('No',
                                            textAlign:
                                            TextAlign.center,
                                            style: theme
                                                .textTheme.subtitle2),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        child: Text('Yes',
                                            textAlign:
                                            TextAlign.center,
                                            style: theme
                                                .textTheme.headline5),
                                      ),
                                    ],
                                  );
                                },
                              );*/
                                      },
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            //FlutterIcons.plus_ant,
                                            Icons.person,
                                            color: theme.errorColor,
                                            size: 17.0,
                                          ),
                                          Text('Add Review',
                                              style: theme.textTheme.subtitle1!
                                                  .copyWith(
                                                      color: theme.errorColor)),
                                        ],
                                      ),
                                    )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: theme.primaryColor),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total: \u{20B9}${completedlists!.price}',
                    style: theme.textTheme.headline4),
                GestureDetector(
                    onTap: () {
                      Get.to(CompleteOrderDetailPage(
                          completedlists: completedlists));
                    },
                    child: Text('View',
                        style: theme.textTheme.subtitle1!
                            .copyWith(color: theme.primaryColor))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
