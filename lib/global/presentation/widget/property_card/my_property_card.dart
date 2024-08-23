import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/widget/property_card/property_card_details.dart';
import 'package:real_estate_property/global/presentation/widget/property_card/property_card_image.dart';

import '../../../data/model/property_model.dart';

class MyPropertyCard extends StatelessWidget {
  final PropertyModel propertyModel;
  final double? width;

  const MyPropertyCard(
    this.propertyModel, {
    super.key,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      width: width ?? double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(.1),
            spreadRadius: 1,
            blurRadius: .1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          PropertyCardImage(
            propertyModel.images[1],
            width: double.infinity,
            height: 150,
          ),
          PropertyCardDetails(
            propertyModel,
            large: width == null,
          ),
        ],
      ),
    );
  }
}
