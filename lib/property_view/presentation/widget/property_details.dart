import 'package:flutter/material.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/pills/icon_text_pill.dart';
import 'package:real_estate_property/global/presentation/widget/pills/text_pill.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class PropertyViewDetails extends StatelessWidget {
  final PropertyModel propertyModel;

  const PropertyViewDetails(
    this.propertyModel, {
    super.key,
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
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth * .65,
                      child: MyText.h2(
                        propertyModel.name,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                      ),
                    ),
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
                    )
                  ],
                ),
                Column(
                  children: [
                    MyText.h2(
                      "\$${propertyModel.price}",
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 4),
                    MyText.regular(
                      "Per ${propertyModel.leaseType}",
                      color: secondary,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
