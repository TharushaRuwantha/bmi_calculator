import 'package:flutter/material.dart';
class roundIconButton extends StatelessWidget {
  const roundIconButton({required this.icon, required this.onpress});
  final IconData icon;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpress,
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
