import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.child, this.onTap, this.cardColor});

  final child;
  final onTap;
  final cardColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          height: 200,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: cardColor,
          ),
          child: child,
        ),
        onTap: onTap,
      ),
    );
  }
}
