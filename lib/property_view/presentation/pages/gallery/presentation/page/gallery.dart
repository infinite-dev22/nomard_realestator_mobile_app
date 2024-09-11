import 'package:flutter/material.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';

import '../widget/gallery_layout.dart';

class Gallery extends StatelessWidget {
  final PropertyModel property;

  const Gallery(this.property, {super.key});

  @override
  Widget build(BuildContext context) {
    return GalleryLayout(property);
  }
}
