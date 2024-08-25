import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class MyWidgetText extends StatelessWidget {
  final String title;
  final Widget widget;

  const MyWidgetText(this.title, this.widget, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText.regular(
          title,
          color: secondaryDark,
        ),
        widget,
      ],
    );
  }
}
