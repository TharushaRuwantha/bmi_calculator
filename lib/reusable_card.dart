import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {


  final VoidCallback onPress;


  ReusableCard({required this.colour,required this.cardChild , required this.onPress});

  final Color colour;
  final Widget cardChild;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color:colour,
        ),
        child: cardChild,

      ),
    );
  }
}