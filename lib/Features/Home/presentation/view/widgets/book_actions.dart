import 'package:flutter/material.dart';

import 'custom_button.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: CustomButton(
            backGroundColor: Colors.white,
            text: '19.99€',
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12), topLeft: Radius.circular(12)),
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: CustomButton(
            backGroundColor: Color(0xffEF8262),
            text: 'Free preview',
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12)),
          ),
        )
      ],
    );
  }
}
