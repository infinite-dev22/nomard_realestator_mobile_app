import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/constants/styles.dart';

class MyText extends StatelessWidget {
  final String text;
  final TextStyle style;

  MyText.bold(this.text, {super.key, Color color = secondaryDark}) : style = boldStyle.copyWith(color: color);

  MyText.semiBold(this.text, {super.key, Color color = secondaryDark}) : style = semiBoldStyle.copyWith(color: color);

  MyText.caption(this.text, {super.key, Color color = secondaryDark})
      : style = captionStyle.copyWith(color: color);

  MyText.regular(this.text,
      {super.key,
      Color color = secondaryDark,
      FontWeight fontWeight = FontWeight.normal})
      : style = regularStyle.copyWith(color: color, fontWeight: fontWeight);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      overflow: TextOverflow.ellipsis,
    );
  }
}
