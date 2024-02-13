import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBottomBarColor,
      width: double.infinity,
      height: 60,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
