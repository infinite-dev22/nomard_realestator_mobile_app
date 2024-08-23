import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

import '../../constants/app_colors.dart';

class IconTextPill extends StatelessWidget {
  final String text;

  const IconTextPill(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      decoration: BoxDecoration(
        color: secondaryLight,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            ),
            const SizedBox(width: 5),
            MyText.regular(
              text,
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
