import 'package:cached_network_image/cached_network_image.dart';
import 'package:fiverr/helpers/colors.dart';
import 'package:fiverr/helpers/toast.dart';
import 'package:fiverr/models/rejected_model.dart';
import 'package:fiverr/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
//import 'package:smooth_star_rating/smooth_star_rating.dart';

class RejectOrderDetailPage extends StatefulWidget {
  final RejectedModel? rejectedlists;

  const RejectOrderDetailPage({Key? key, this.rejectedlists}) : super(key: key);

  @override
  _RejectOrderDetailPageState createState() => _RejectOrderDetailPageState();
}

class _RejectOrderDetailPageState extends State<RejectOrderDetailPage> {
  final TextEditingController reviewCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    final themeProv = Provider.of<ThemeProvider>(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor:
          themeProv.isLightTheme ? Color(0xFFF8F9FA) : kBackgroundDarkColor,
      appBar: AppBar(
        backgroundColor: theme.cardColor,
        title: Text('Reject/Cancel Order Detail',
            style: theme.textTheme.headline3),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: theme.primaryColor,
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 75.0),
              Container(
                width: size.width,
                padding: const EdgeInsets.symmetric(
                    horizontal: 18.0, vertical: 25.0),
                decoration: BoxDecoration(
                    color: theme.cardColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: CachedNetworkImage(
                            imageUrl: widget.rejectedlists!.user_details[0]
                                ['shop_image']!,
                            width: 50.0,
                            height: 50.0,
                            fit: BoxFit.cover,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                        ),
                        // Container(
                        //   width: 80.0,
                        //   height: 80.0,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(12.0),
                        //     image: DecorationImage(
                        //       image: AssetImage(
                        //         widget.rejectedlists!.user_details[0]['shop_image']!,
                        //       ),
                        //       fit: BoxFit.cover,
                        //     ),
                        //   ),
                        // ),
                        SizedBox(width: 12.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  widget.rejectedlists!.user_details[0]
                                      ['shop_name']!,
                                  style: theme.textTheme.headline3!
                                      .copyWith(height: 1.0)),
                              SizedBox(height: 5.0),
                              Text(
                                  widget.rejectedlists!.user_details[0]
                                      ['shop_address']!,
                                  style: theme.textTheme.bodyText2),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Text('Booking Date & Time',
                        style: theme.textTheme.headline4),
                    SizedBox(height: 10.0),
                    Text(
                        '${widget.rejectedlists!.schedule_date} - ${widget.rejectedlists!.schedule_time}',
                        style: theme.textTheme.bodyText2),
                    SizedBox(height: 20.0),
                    SizedBox(
                      width: size.width,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          (widget.rejectedlists!.status! == '4')
                              ? 'Cancel'
                              : (widget.rejectedlists!.status! == '2')
                                  ? 'Rejected'
                                  : '',

                          // widget.rejectedlists!.status!,
                          style: theme.textTheme.button,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              SizedBox(height: 15.0),
              Container(
                width: size.width,
                margin: EdgeInsets.all(18.0),
                padding: EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: theme.primaryColor),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total price', style: theme.textTheme.headline4),
                        Text('\$${widget.rejectedlists!.price}',
                            style: theme.textTheme.headline4),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.all(18.0),
                padding: EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: theme.primaryColor),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Services', style: theme.textTheme.headline5),
                        Text('Price', style: theme.textTheme.headline5),
                      ],
                    ),
                    SizedBox(height: 12.0),
                    Column(
                      children: widget.rejectedlists!.subcats_details
                          .map(
                            (e) => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(e['name']!,
                                    style: theme.textTheme.bodyText2!.copyWith(
                                        color: theme.unselectedWidgetColor)),
                                Text("\$${e['offer_price']}",
                                    style: theme.textTheme.bodyText2!.copyWith(
                                        color: theme.unselectedWidgetColor)),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Duration',
                            style: theme.textTheme.headline5),
                        Text('Payment Status',
                            style: theme.textTheme.headline5),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text("${widget.rejectedlists!.totalDuration} min",
                        //     style: theme.textTheme.bodyText2),
                        Text(widget.rejectedlists!.status!,
                            style: theme.textTheme.bodyText2),
                      ],
                    ),
                    SizedBox(height: 12.0),
                    Text('Booking Number', style: theme.textTheme.headline5),
                    Text(widget.rejectedlists!.order_id!,
                        style: theme.textTheme.bodyText2),
                  ],
                ),
              ),
              widget.rejectedlists!.status == "COMPLETED"
                  ? Container(
                      width: size.width,
                      margin: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: theme.primaryColor),
                      ),
                      child: Column(
                        children: [
                          // Padding(
                          //   padding: EdgeInsets.all(18.0),
                          //   child: SmoothStarRating(
                          //     size: 25.0,
                          //     color: kYellowColor,
                          //     isReadOnly: false,
                          //     starCount: 5,
                          //     rating: 0,
                          //     allowHalfRating: false,
                          //     borderColor: theme.unselectedWidgetColor,
                          //     onRated: (rating) {},
                          //   ),
                          // ),
                          Padding(
                            padding: EdgeInsets.all(18.0),
                            child: TextField(
                              cursorColor: theme.primaryColor,
                              keyboardType: TextInputType.text,
                              style: theme.textTheme.bodyText2,
                              maxLines: 5,
                              maxLength: 1000,
                              controller: reviewCtrl,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 18.0),
                                hintText: 'Add you review...',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide(
                                    color: theme.unselectedWidgetColor,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide(
                                    color: theme.primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (reviewCtrl.text == '') {
                                return toast('Cannot send empty review');
                              } else {
                                Get.back();
                                toast('Thank you for your feedback!');
                              }
                            },
                            child: Container(
                              width: size.width,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: theme.primaryColor,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),
                                border: Border.all(color: theme.primaryColor),
                              ),
                              child: Center(
                                  child: Text(
                                'Send',
                                style: theme.textTheme.bodyText2,
                              )),
                            ),
                          )
                        ],
                      ),
                    )
                  : widget.rejectedlists!.status == "CANCEL"
                      ? Container()
                      : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
