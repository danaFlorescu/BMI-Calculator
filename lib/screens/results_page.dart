import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Text(
              'Your result',
              style: resultsPageTitleStyle,
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: bmiStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: interpretationStyle,
                  ),
                ],
              ),
              colour: activeCardColour,
              onPress: () {},
            ),
          ),
          Row(
            children: [
              Expanded(
                child: BottomButton(
                  textOfTheButton: 'RE-CALCULATE',
                  onTapAction: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
