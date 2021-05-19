import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.state});

  final IconData icon;
  final Function state;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: state,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
