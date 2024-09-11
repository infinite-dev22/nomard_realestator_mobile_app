import 'package:flutter/material.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';

import '../widget/about_layout.dart';

class About extends StatelessWidget {
  final PropertyModel property;

  const About(this.property, {super.key});

  @override
  Widget build(BuildContext context) {
    return const AboutLayout();
  }
}
