import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
class results_page extends StatelessWidget {


  results_page({required this.bmiResult , required this.resultText , required this.interpretation });

  final String bmiResult;
  final String resultText;
  final String interpretation;


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
              padding: EdgeInsets.only(left: 15.0),
              alignment: Alignment.bottomLeft,
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
                Text(resultText,
                style: kResultTextStyle,),
                Text(bmiResult,
                style: kBIMTextStyle,),
                Text(interpretation,
                textAlign: TextAlign.center,
                style: kBodyTextStyle,),
              ],
            ), onPress: () {  },
          ),),
          bottombutton(buttonTitle: 'RE-CALCULATE', onTap: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
