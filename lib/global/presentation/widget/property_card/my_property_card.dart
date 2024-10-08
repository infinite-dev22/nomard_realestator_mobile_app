import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_property/global/presentation/widget/property_card/property_card_details.dart';
import 'package:real_estate_property/global/presentation/widget/property_card/property_card_image.dart';

import '../../../data/model/property_model.dart';
import '../../bloc/property_card/property_card_bloc.dart';

class MyPropertyCard extends StatelessWidget {
  final PropertyModel propertyModel;
  final double? width;
  final double height;
  final Function()? onTap;

  const MyPropertyCard(
    this.propertyModel, {
    super.key,
    this.width,
    this.height = 150,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 16,
        shadowColor: Theme.of(context).colorScheme.shadow,
        borderRadius: BorderRadius.circular(16),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          width: width ?? double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).colorScheme.surface,
          ),
          child: Column(
            children: [
              BlocProvider(
                create: (context) => PropertyCardBloc(),
                child: PropertyCardImage(
                  propertyModel,
                  width: double.infinity,
                  height: height,
                ),
              ),
              PropertyCardDetails(
                propertyModel,
                large: width == null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
