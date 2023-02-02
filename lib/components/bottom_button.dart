import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.textOfTheButton, required this.onTapAction});

  final String textOfTheButton;
  final VoidCallback onTapAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapAction,
      child: Container(
        child: Center(
          child: Text(
            textOfTheButton,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: colorBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
