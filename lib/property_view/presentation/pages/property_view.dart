import 'package:flutter/material.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/property_view/presentation/widget/property_view_layout.dart';

class PropertyView extends StatelessWidget {
  final PropertyModel property;
  const PropertyView({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PropertyViewLayout(property));
  }
}
