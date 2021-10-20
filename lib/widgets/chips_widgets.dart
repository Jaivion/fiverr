import 'package:fiverr/helpers/choice_chips.dart';
import 'package:flutter/material.dart';
class CHoiceChips extends StatefulWidget {
  const CHoiceChips({ Key? key, }) : super(key: key);

  @override
  _CHoiceChipsState createState() => _CHoiceChipsState();
}

class _CHoiceChipsState extends State<CHoiceChips> {
int index = 3;
  final double spacing = 8;

  List choiceChips = ChoiceChips.all;

  @override
  Widget build(BuildContext context) {
    return Wrap(
        runSpacing: spacing,
        spacing: spacing,
        children: choiceChips
            .map((choiceChip) => ChoiceChip(
                  label: Text(choiceChip.label),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blueGrey[700]),
                  onSelected: (isSelected) => setState(() {
                    choiceChips = choiceChips.map((otherChip) {
                      final newChip = otherChip.copy(isSelected: false);

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
      );
  }
}