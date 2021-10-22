import 'package:fiverr/models/market_place_model.dart';
import 'package:fiverr/widgets/chips_widgets.dart';
import 'package:fiverr/widgets/rectangle_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.grey[850],
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.grey[850],
              size: 26,
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.tune_outlined,
              color: Colors.grey[850],
              size: 28,
            ),
            const SizedBox(
              width: 10,
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Container(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: [
                    Text("Logo Design",
                        style: TextStyle(
                          fontSize: 18,fontFamily: "workSans",
                          color: Colors.blueGrey[850],
                          fontWeight: FontWeight.bold,
                        ))
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: [
                    Flexible(
                      child: Text(
                          "Hire a designer to create a logo for a new brande or give your existing logo a face lift",
                          //overflow: TextOverflow.clip,
                          softWrap: true,
                          style: TextStyle(fontFamily: "workSans",
                            fontSize: 14,
                            color: Colors.blueGrey[800],
                            //fontWeight: FontWeight.bold,
                          )),
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(children: [
                    Text("Shop by",
                        style: TextStyle(
                          fontSize: 18,fontFamily: "workSans",
                          color: Colors.blueGrey[850],
                          fontWeight: FontWeight.bold,
                        ))
                  ]),
                ),
                // Padding(
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                //   child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: const [
                //         Padding(
                //           padding: EdgeInsets.only(right: 10),
                //           child: Chip(
                //             label: Text("Style"),
                //             backgroundColor: Colors.white,
                //             shadowColor: Colors.black54,
                //             elevation: 1,
                //             //labelPadding: EdgeInsets.symmetric(horizontal: 2,vertical: 3),
                //           ),
                //         ),
                //         Padding(
                //           padding: EdgeInsets.only(right: 10),
                //           child: Chip(
                //             label: Text("Style"),
                //             backgroundColor: Colors.white,
                //             shadowColor: Colors.black54,
                //             elevation: 1,
                //             //labelPadding: EdgeInsets.symmetric(horizontal: 2,vertical: 3),
                //           ),
                //         ),
                //       ]),
                // ),
                const CHoiceChips(),
                Container(
                  height: 140,
                  color: Colors.transparent,
                  //padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    //physics: const NeverScrollableScrollPhysics(),
                    itemCount: featuredServicesList.length,
                    itemBuilder: (context, index) {
                      MarketPlaceModel featuredServices =
                          featuredServicesList[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 120,
                          width: 130,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1.0, 1.0),
                                blurRadius: 2.0,
                              ),
                            ],
                          ),
                          child: const Center(child: Text("filter")),
                        ),
                      );
                    },
                  ),
                ), 
                Expanded(
                  child: Container(
                    //height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: featuredServicesList.length,
                      itemBuilder: (context, index) {
                        MarketPlaceModel featuredServices =
                            featuredServicesList[index];
                        return const RectangleCard();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));

    //   Widget buildChoiceChips() => Wrap(
    //   runSpacing: spacing,
    //   spacing: spacing,
    //   children: choiceChips
    //       .map((choiceChip) => ChoiceChip(
    //             label: Text(choiceChip.label),
    //             labelStyle: TextStyle(
    //                 fontWeight: FontWeight.bold, color: Colors.white),
    //             onSelected: (isSelected) => setState(() {
    //               choiceChips = choiceChips.map((otherChip) {
    //                 final newChip = otherChip.copy(isSelected: false);

    //                 return choiceChip == newChip
    //                     ? newChip.copy(isSelected: isSelected)
    //                     : newChip;
    //               }).toList();
    //             }),
    //             selected: choiceChip.isSelected,
    //             selectedColor: Colors.green,
    //             backgroundColor: Colors.blue,
    //           ))
    //       .toList(),
    // );
  }
}
