import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeadbackDialogBox extends StatefulWidget {
  @override
  _FeadbackDialogBoxState createState() => _FeadbackDialogBoxState();
}

class _FeadbackDialogBoxState extends State<FeadbackDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.green,
    );
  }
}
