import 'package:fiverr/helpers/choice_chips.dart';
import 'package:fiverr/models/market_place_model.dart';
import 'package:flutter/material.dart';

class CHoiceChips extends StatefulWidget {
  const CHoiceChips({
    Key? key,
  }) : super(key: key);

  @override
  _CHoiceChipsState createState() => _CHoiceChipsState();
}

class _CHoiceChipsState extends State<CHoiceChips> {
  int chipIndex = 0;
  final double spacing = 8;

  List choiceChips = ChoiceChips.all;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          runSpacing: spacing,
          spacing: spacing,
          children: choiceChips
              .map((choiceChip) => ChoiceChip(
                    label: Text(choiceChip.label),
                    labelStyle: TextStyle(
                        fontFamily: "workSans",
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[700]),
                    onSelected: (isSelected) => setState(() {
                      //chipIndex = chipIndex
                      choiceChips = choiceChips.map((otherChip) {
                        final newChip = otherChip.copy(isSelected: false);
                        chipIndex = 0;
                        return choiceChip == newChip
                            ? newChip.copy(isSelected: isSelected)
                            : newChip;
                      }).toList();
                    }),
                    selected: choiceChip.isSelected,
                    selectedColor: Colors.green[100],
                    backgroundColor: Colors.white,
                    selectedShadowColor: Colors.green[200],
                    elevation: 1,
                    shadowColor: Colors.grey[200],
                  ))
              .toList(),
        ),
        Container(
          height: 140,
          color: Colors.transparent,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featuredServicesList.length,
            itemBuilder: (context, index) {
              MarketPlaceModel featuredServices = featuredServicesList[index];
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
        
          // Container(
          //   height: 140,
          //   color: Colors.transparent,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: featuredServicesList.length,
          //     itemBuilder: (context, index) {
          //       MarketPlaceModel featuredServices = featuredServicesList[index];
          //       return Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Container(
          //           padding: const EdgeInsets.symmetric(horizontal: 10),
          //           height: 120,
          //           width: 130,
          //           decoration: const BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.all(Radius.circular(10)),
          //             boxShadow: <BoxShadow>[
          //               BoxShadow(
          //                 color: Colors.black26,
          //                 offset: Offset(1.0, 1.0),
          //                 blurRadius: 2.0,
          //               ),
          //             ],
          //           ),
          //           child: const Center(child: Text("filter2")),
          //         ),
          //       );
          //     },
          //   ),
          // ),
        
          // Container(
          //   height: 140,
          //   color: Colors.transparent,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: featuredServicesList.length,
          //     itemBuilder: (context, index) {
          //       MarketPlaceModel featuredServices = featuredServicesList[index];
          //       return Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Container(
          //           padding: const EdgeInsets.symmetric(horizontal: 10),
          //           height: 120,
          //           width: 130,
          //           decoration: const BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.all(Radius.circular(10)),
          //             boxShadow: <BoxShadow>[
          //               BoxShadow(
          //                 color: Colors.black26,
          //                 offset: Offset(1.0, 1.0),
          //                 blurRadius: 2.0,
          //               ),
          //             ],
          //           ),
          //           child: const Center(child: Text("filter3")),
          //         ),
          //       );
          //     },
          //   ),
          // ),
      ],
    );
  }
}
