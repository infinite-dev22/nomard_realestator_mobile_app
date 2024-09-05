import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class TextPill extends StatelessWidget {
  final String text;

  const TextPill(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
      decoration: BoxDecoration(
        color: secondaryLight,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: MyText.caption(
          text,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
