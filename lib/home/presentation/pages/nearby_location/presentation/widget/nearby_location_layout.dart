import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/global/presentation/widget/property_card/my_property_card.dart';

class NearByLocationLayout extends StatelessWidget {
  const NearByLocationLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var properties = List<PropertyModel>.of(
      [
        PropertyModel(
            ["assets/images/house_1.jpg", "assets/images/house_1.jpg"],
            "A test property",
            "Mansion",
            "Location, Located",
            "Month",
            1200000,
            4.9,
            true),
        PropertyModel(
            ["assets/images/house_1.jpg", "assets/images/house_1.jpg"],
            "A test property",
            "Mansion",
            "Location, Located",
            "Month",
            1200000,
            4.9,
            true),
        PropertyModel(
            ["assets/images/house_1.jpg", "assets/images/house_1.jpg"],
            "A test property",
            "Mansion",
            "Location, Located",
            "Month",
            1200000,
            4.9,
            true),
        PropertyModel(
            ["assets/images/house_1.jpg", "assets/images/house_1.jpg"],
            "A test property",
            "Mansion",
            "Location, Located",
            "Month",
            1200000,
            4.9,
            true),
        PropertyModel(
            ["assets/images/house_1.jpg", "assets/images/house_1.jpg"],
            "A test property",
            "Mansion",
            "Location, Located",
            "Month",
            1200000,
            4.9,
            true),
        PropertyModel(
            ["assets/images/house_1.jpg", "assets/images/house_1.jpg"],
            "A test property",
            "Mansion",
            "Location, Located",
            "Month",
            1200000,
            4.9,
            true),
        PropertyModel(
            ["assets/images/house_1.jpg", "assets/images/house_1.jpg"],
            "A test property",
            "Mansion",
            "Location, Located",
            "Month",
            1200000,
            4.9,
            true),
        PropertyModel(
            ["assets/images/house_1.jpg", "assets/images/house_1.jpg"],
            "A test property",
            "Mansion",
            "Location, Located",
            "Month",
            1200000,
            4.9,
            true),
        PropertyModel(
            ["assets/images/house_1.jpg", "assets/images/house_1.jpg"],
            "A test property",
            "Mansion",
            "Location, Located",
            "Month",
            1200000,
            4.9,
            true),
      ],
    );

    var size = MediaQuery.of(context).size;

    return GridView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: .68),
      itemCount: properties.length,
      itemBuilder: (context, index) => MyPropertyCard(
        properties[index],
        width: size.width * .5,
        onTap: () => GoRouter.of(context).pushNamed("property_view"),
      ),
    );
  }
}
