import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class MyTitledText extends StatelessWidget {
  final String title;
  final String text;

  const MyTitledText(this.title, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText.bold(
          title,
          color: secondary,
        ),
        MyText.bold(
          text,
          color: secondaryDark,
        ),
      ],
    );
  }
}
