import 'package:flutter/material.dart';


class IconCard extends StatelessWidget {

  IconCard({required this.icon,required this.lable});
  final IconData icon;
  final String lable;





  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          lable,
          style:
          TextStyle(
            color: Color(0xFF8D8E98),
            fontSize: 18.0,
          )
          ,
        ),
      ],
    );
  }
}



