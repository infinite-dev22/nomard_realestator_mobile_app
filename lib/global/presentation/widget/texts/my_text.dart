import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/constants/styles.dart';

class MyText extends StatelessWidget {
  final String text;
  final TextStyle style;

  MyText.bold(this.text, {super.key}) : style = boldStyle;

  MyText.semiBold(this.text, {super.key}) : style = semiBoldStyle;

  MyText.caption(this.text, {super.key}) : style = captionStyle;

  MyText.regular(this.text, {super.key, Color color = secondaryDark})
      : style = regularStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
