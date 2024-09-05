import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class MyLinkedText extends StatelessWidget {
  final String title;
  final String text;
  final Color color;
  final bool isHeading;
  final Function()? onPressed;

  const MyLinkedText.header(
    this.title,
    this.text, {
    super.key,
    this.color = secondaryDark,
    this.onPressed,
  }) : isHeading = true;

  const MyLinkedText.normal(
    this.title,
    this.text, {
    super.key,
    this.color = secondaryDark,
    this.onPressed,
  }) : isHeading = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        (isHeading)
            ? MyText.h2(
                title,
                color: secondaryDark,
              )
            : MyText.bold(
                title,
                color: secondary,
              ),
        (isHeading)
            ? TextButton(
                onPressed: onPressed,
                child: MyText.regular(text, color: color),
              )
            : TextButton(
                onPressed: onPressed,
                child: MyText.bold(
                  text,
                  color: color,
                )),
      ],
    );
  }
}
