import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/property_view/presentation/bloc/property_view/property_view_bloc.dart';
import 'package:real_estate_property/property_view/presentation/widget/property_details.dart';
import 'package:real_estate_property/property_view/presentation/widget/property_image.dart';

class PropertyImageView extends StatelessWidget {
  final PropertyModel propertyModel;
  final double height;

  const PropertyImageView(
    this.propertyModel, {
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Column(
        children: [
          BlocProvider(
            create: (context) => PropertyImageViewBloc(),
            child: PropertyViewImage(
              propertyModel,
              width: double.infinity,
              height: height,
            ),
          ),
          PropertyViewDetails(propertyModel),
        ],
      ),
    );
  }
}
