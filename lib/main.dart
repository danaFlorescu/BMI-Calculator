import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

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
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
          Row(
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
          Row(
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
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.cardChild});

  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}

class IconAndTextForReusableCards extends StatelessWidget {
  IconAndTextForReusableCards({required this.iconText, required this.gender});

  final String iconText;
  final IconData? gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FaIcon(
          gender,
          color: Colors.black,
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
