import 'package:flutter/material.dart';
import '../constants.dart';

class IconText extends StatelessWidget {
  IconText(@required this.iconData, @required this.text);

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: kTextStyle,
        ),
      ],
    );
  }
}
