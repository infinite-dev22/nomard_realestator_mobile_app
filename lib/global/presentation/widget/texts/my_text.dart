import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/constants/styles.dart';

class MyText extends StatelessWidget {
  final String text;
  final TextStyle style;
  MyText.h1(this.text, {super.key}) : style = heading1Style;
  MyText.h2(this.text, {super.key}) : style = heading2Style;
  MyText.h3(this.text, {super.key}) : style = heading3Style;
  MyText.headline(this.text, {super.key}) : style = headingLineStyle;
  MyText.subHeading(this.text, {super.key}) : style = subHeadingStyle;
  MyText.caption(this.text, {super.key}) : style = captionStyle;

  MyText.body(this.text, {super.key, Color color = secondaryDark}) : style = bodyStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style,);
  }
}
