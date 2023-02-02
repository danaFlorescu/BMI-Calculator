import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'components/reusable_card.dart';
import 'components/icon_and_text_for_reusable_cards.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xFF0E101C),
        ),
        scaffoldBackgroundColor: Color(0xFF0E101C),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: IconAndTextForReusableCards(
                      iconText: 'Male',
                      gender: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: IconAndTextForReusableCards(
                      iconText: 'Female',
                      gender: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      children: [
                        Text(
                          'HEIGHT',
                          style: textStyleForReusableCards,
                        ),
                        Text(
                          '184cm',
                          style: textStyleForReusableCardsBig,
                        ),
                        Slider(
                          min: 100,
                          max: 220,
                          value: 184,
                          onChanged: (context) {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      children: [
                        Text(
                          'WEIGHT',
                          style: textStyleForReusableCards,
                        ),
                        Text('63', style: textStyleForReusableCardsBig),
                        FloatingActionButton(onPressed: () {}),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      children: [
                        Text(
                          'AGE',
                          style: textStyleForReusableCards,
                        ),
                        Text('20', style: textStyleForReusableCardsBig),
                        FloatingActionButton(onPressed: () {}),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        'CALCULATE',
                        style: kLargeButtonTextStyle,
                      ),
                    ),
                    color: Colors.pink,
                    margin: EdgeInsets.only(top: 10.0),
                    padding: EdgeInsets.only(bottom: 20.0),
                    width: double.infinity,
                    height: kBottomContainerHeight,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
