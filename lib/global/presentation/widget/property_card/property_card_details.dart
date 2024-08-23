import 'package:flutter/material.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/pills/text_pill.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

import '../pills/icon_text_pill.dart';

class PropertyCardDetails extends StatelessWidget {
  final PropertyModel propertyModel;
  final bool large;

  const PropertyCardDetails(
    this.propertyModel, {
    super.key,
    this.large = true,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextPill(propertyModel.type),
                IconTextPill(propertyModel.rating.toString()),
              ],
            ),
            const SizedBox(height: 4),
            MyText.bold(propertyModel.name),
            const SizedBox(height: 4),
            (large)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                  )
                : Column(
                    children: [
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
                  )
          ],
        ),
      );
    });
  }
}
