import 'package:flutter/material.dart';
import '../constants.dart';


class IconContent extends StatelessWidget {
  IconContent({this.content,this.icon});
  final IconData icon;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          content,
          style: klabelTextStyle,
        ),
      ],
    );
  }
}
