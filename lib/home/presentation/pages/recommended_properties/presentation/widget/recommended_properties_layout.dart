import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/presentation/widget/property_card/my_property_card.dart';
import 'package:real_estate_property/home/data/repository/recommended_data.dart';

class RecommendedPropertiesLayout extends StatelessWidget {
  const RecommendedPropertiesLayout({super.key});

  @override
  Widget build(BuildContext context) {
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
          childAspectRatio: .63),
      itemCount: recommendedProperties.length,
      itemBuilder: (context, index) => MyPropertyCard(
        recommendedProperties[index],
        width: size.width * .5,
        onTap: () => GoRouter.of(context).pushNamed("property_view", queryParameters: {"index":index.toString(), "type":"recommended"}),
      ),
    );
  }
}
