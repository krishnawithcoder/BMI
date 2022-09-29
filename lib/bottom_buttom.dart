import 'package:flutter/material.dart';
import 'constent.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitlle});
  final Function() onTap;
  final String buttonTitlle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitlle,
            style: largeButtonTextStyte,
          ),
        ),
        color: bottonContainerColour,
        margin: EdgeInsets.only(top: 15.0),
        padding: EdgeInsets.only(bottom: 5.0),
        width: double.infinity,
        height: bottonContainerHeight,
      ),
    );
  }
}
