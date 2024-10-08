import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/constants/styles.dart';

class MyText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextOverflow? overflow;
  final bool? softWrap;
  final TextAlign? textAlign;

  MyText.h1(
    this.text, {
    super.key,
    Color color = secondaryDark,
    this.overflow,
    this.softWrap,
    this.textAlign = TextAlign.center,
  }) : style = h1Style.copyWith(color: color);

  MyText.h2(
    this.text, {
    super.key,
    Color color = secondaryDark,
    this.overflow,
    this.softWrap,
    this.textAlign = TextAlign.center,
  }) : style = h2Style.copyWith(color: color);

  MyText.h3(
    this.text, {
    super.key,
    Color color = secondaryDark,
    this.overflow,
    this.softWrap,
    this.textAlign = TextAlign.center,
  }) : style = h3Style.copyWith(color: color);

  MyText.bold(
    this.text, {
    super.key,
    Color color = secondaryDark,
    this.overflow,
    this.softWrap,
    this.textAlign = TextAlign.center,
  }) : style = boldStyle.copyWith(color: color);

  MyText.semiBold(
    this.text, {
    super.key,
    Color color = secondaryDark,
    this.overflow,
    this.softWrap,
    this.textAlign = TextAlign.center,
  }) : style = semiBoldStyle.copyWith(color: color);

  MyText.caption(
    this.text, {
    super.key,
    Color color = secondaryDark,
    this.overflow,
    this.softWrap,
    this.textAlign = TextAlign.center,
  }) : style = captionStyle.copyWith(color: color);

  MyText.regular(
    this.text, {
    super.key,
    Color color = secondaryDark,
    FontWeight fontWeight = FontWeight.normal,
    this.overflow,
    this.softWrap,
    this.textAlign = TextAlign.center,
  }) : style = regularStyle.copyWith(color: color, fontWeight: fontWeight);

  MyText.small(
    this.text, {
    super.key,
    Color color = secondaryDark,
    FontWeight fontWeight = FontWeight.normal,
    this.overflow,
    this.softWrap,
    this.textAlign = TextAlign.center,
  }) : style = smallStyle.copyWith(color: color, fontWeight: fontWeight);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      overflow: overflow,
      softWrap: softWrap,
      textAlign: textAlign,
    );
  }
}
