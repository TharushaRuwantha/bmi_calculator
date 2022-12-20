import 'dart:ui';

import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_containt.dart';
import 'reusable_card.dart';

import 'constants.dart';


class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}



class _InputPageState extends State<InputPage> {
  @override
  int height = 120;
  int weight = 60;
  int age = 15;


  Gender selectedGender = Gender.male;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
            Expanded(child: Row(children: <Widget>[
              Expanded(child:
              ReusableCard(
                onPress: (){
                  setState(() {
                    selectedGender=Gender.male;
                  });
                },
                cardChild: IconCard(
                  icon: FontAwesomeIcons.mars,
                  lable: 'MALE'
                  ,

                ),
                colour:selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
              ),),
              Expanded(child:  ReusableCard(
                onPress: (){
                  setState(() {
                    selectedGender=Gender.female;
                  });
                },
                  cardChild: IconCard(
                    icon: FontAwesomeIcons.venus,
                    lable: 'FEMALE',
                  ),
                  colour:selectedGender == Gender.female ? activeCardColor : inactiveCardColor))
            ],)),
            Expanded(child: Row(children: <Widget>[
              Expanded(child:  ReusableCard(
                onPress: (){

                },
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      const Text('HEIGHT',
                      style: lableStyle,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children:  <Widget> [
                          Text(
                            height.toString(),
                            style:kNumberText,
                          ),
                          Text(
                            'cm',
                            style: lableStyle,
                          ),

                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                        ),
                        child: Slider(value: height.toDouble(),
                            min: 100.0,
                            max: 240.0,
                            inactiveColor: Color(0xFF8D8E98),
                            onChanged: (double newValue){
                              setState(() {
                                height = newValue.round();
                              });
                            }),
                      )




                    ],
                  ),
                  colour:activeCardColor))
            ],)),
            Expanded(child: Row(children: <Widget>[
              Expanded(child:  ReusableCard(
                onPress: (){

                },
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  <Widget>[
                      Text(
                          'WEIGHT',
                          style: lableStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          roundIconButton(icon: FontAwesomeIcons.minus,onpress: (){
                            setState(() {
                              weight --;
                            });
                          },),
                          SizedBox(width:15.0),
                          roundIconButton(icon: FontAwesomeIcons.plus,onpress:(){
                            setState(() {
                              weight ++;
                            });
                          }),


                        ],

                      )
                    ],
                  ),
                  colour:activeCardColor)),
              Expanded(child:  ReusableCard(
                onPress: (){

                },
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  <Widget>[
                      Text(
                          'AGE',
                      style: lableStyle,),
                      Text(
                        age.toString(),
                        style: kNumberText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          roundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpress:(){
                                  setState(() {
                                    age--;
                                  });
                          }),
                          SizedBox(
                            width: 15.0,
                          ),
                          roundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpress:(){
                                  setState(() {
                                    age--;
                                  });
                          })
                        ],
                      ),
                    ],
                  ),
                  colour:activeCardColor))
            ],
            )
            ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context){
                return results_page();
              }));
            },
            child: Container(
              child: Center(child: Text('CALCULATE',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),)),
              color: bottomContainerColor ,
              margin: const EdgeInsets.only(top:10.0),
              height: bottomContainerHeight,
            ),
          )

        ],
      )

    );
  }

}



class roundIconButton extends StatelessWidget {
  const roundIconButton({required this.icon , required this.onpress});
  final IconData icon;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed:onpress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,

      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}



