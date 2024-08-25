import 'package:flutter/material.dart';
import 'package:real_estate_property/payment/presentation/pages/review/presentation/widget/review_property_details.dart';
import 'package:real_estate_property/property_view/presentation/pages/gallery/presentation/widget/images/small_property_image.dart';

import '../../../../../../global/data/model/property_model.dart';

class ReviewItem extends StatelessWidget {
  final PropertyModel propertyModel;

  const ReviewItem(this.propertyModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      width: double.infinity,
      alignment: Alignment.center,
      color: Theme.of(context).colorScheme.surface,
      child: Row(
        children: [
          SmallPropertyImage(propertyModel.images[1]),
          const SizedBox(width: 20),
          ReviewPropertyDetails(
            propertyModel,
          ),
        ],
      ),
    );
  }
}
