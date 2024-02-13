import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({this.onPressed, this.childIcon});

  final onPressed;
  final childIcon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6,
      constraints: BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(56)),
      fillColor: Color(0xFF5C5F6E),
      child: Center(
        child: Icon(
          childIcon,
          size: 40,
          color: Colors.white,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
