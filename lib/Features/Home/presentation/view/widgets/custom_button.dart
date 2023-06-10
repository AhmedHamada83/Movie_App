// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import '../../../../../core/utls/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backGroundColor,
      required this.text,
      required this.textColor,
      required this.borderRadius});
  final Color backGroundColor;
  final String text;
  final Color textColor;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.w900, color: textColor),
        ),
      ),
    );
  }
}
