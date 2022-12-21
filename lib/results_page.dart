import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
class results_page extends StatelessWidget {
  const results_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex:5,
            child: ReusableCard(
            colour: activeCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Normal',
                style: kResultTextStyle,),
                Text('165',
                style: kBIMTextStyle,),
                Text('your BMI result is quite Low',
                textAlign: TextAlign.center,
                style: kBodyTextStyle,),
              ],
            ), onPress: () {  },
          ),),
        ],
      ),
    );
  }
}
