import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

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
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 55.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              cardChild: Column(
                children: [
                  Text('OVERWEIGHT'),
                  Text(
                    '23.7',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 87.0,
                    ),
                  ),
                  Text(
                      'You have a higher than normal body weight. Try to exercise more'),
                ],
              ),
              colour: kActiveCardColour,
              onPress: () {},
            ),
          ),
          Row(
            children: [
              Expanded(
                child: BottomButton(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
