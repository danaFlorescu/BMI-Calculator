import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants.dart';

class IconAndTextForReusableCards extends StatelessWidget {
  IconAndTextForReusableCards({required this.iconText, required this.gender});

  final String iconText;
  final IconData? gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          gender,
          color: Colors.white,
          size: 50.0,
        ),
        Text(
          iconText,
          style: textStyleForReusableCards,
        ),
      ],
    );
  }
}
