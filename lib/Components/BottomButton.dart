import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap,this.title});

  final String title;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(0xFFEB1555),
        width: double.infinity,
        height: 80.0,
        margin: EdgeInsets.only(top: 15.0),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}