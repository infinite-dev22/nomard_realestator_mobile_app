import 'package:flutter/material.dart';

import '../../../../../../global/data/model/property_model.dart';
import '../../../../../../global/presentation/constants/app_colors.dart';
import '../../../../../../global/presentation/widget/pills/icon_text_pill.dart';
import '../../../../../../global/presentation/widget/pills/text_pill.dart';
import '../../../../../../global/presentation/widget/texts/my_text.dart';

class ReviewPropertyDetails extends StatelessWidget {
  final PropertyModel propertyModel;

  const ReviewPropertyDetails(this.propertyModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText.bold(propertyModel.name),
        const SizedBox(height: 4),
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Theme.of(context).colorScheme.primary,
              size: 20,
            ),
            const SizedBox(width: 4),
            MyText.regular(
              propertyModel.location,
              color: secondary,
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            MyText.regular(
              "\$${propertyModel.price}",
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(width: 4),
            MyText.regular(
              "/${propertyModel.leaseType}",
              color: secondary,
            ),
          ],
        ),
      ],
    );
  }
}
