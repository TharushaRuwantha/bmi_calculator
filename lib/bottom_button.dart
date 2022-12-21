import 'package:flutter/material.dart';
import 'constants.dart';
class bottombutton extends StatelessWidget {
  bottombutton({required this.buttonTitle, required this.onTap});

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            'CALCULATE',
            style: kLargeTextButton,
          ),
        ),
        color: bottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        height: bottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}
