import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_linked_text.dart';
import 'package:real_estate_property/home/data/repository/featured_data.dart';
import 'package:real_estate_property/home/data/repository/nearby_data.dart';
import 'package:real_estate_property/home/data/repository/recommended_data.dart';

import '../../../global/presentation/widget/carousels/my_carousel.dart';
import '../../../global/presentation/widget/property_card/my_property_card.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var _widgets = <Widget>[
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MyLinkedText.header(
              "Featured",
              "See all",
              color: Theme.of(context).colorScheme.primary,
              onPressed: () => GoRouter.of(context).pushNamed("featured", ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
            ),
            child: SizedBox(
              height: 320,
              child: MyCarousel3(
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) =>Padding(
                  padding: const EdgeInsets.all(16),
                  child: MyPropertyCard(
                    featuredProperties[index],
                    width: size.width * .7,
                    onTap: () =>
                        GoRouter.of(context).pushNamed("property_view", queryParameters: {"index":index.toString(), "type":"featured"}),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MyLinkedText.header(
              "Nearby Location",
              "See all",
              color: Theme.of(context).colorScheme.primary,
              onPressed: () => GoRouter.of(context).pushNamed("near_by"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
            ),
            child: SizedBox(
              height: 320,
              child: MyCarousel3(
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) =>Padding(
                  padding: const EdgeInsets.all(16),
                  child: MyPropertyCard(
                    nearbyProperties[index],
                    width: size.width * .7,
                    onTap: () =>
                        GoRouter.of(context).pushNamed("property_view", queryParameters: {"index":index.toString(), "type":"near_by"}),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MyLinkedText.header(
              "Recommended Property",
              "See all",
              color: Theme.of(context).colorScheme.primary,
              onPressed: () => GoRouter.of(context).pushNamed("recommended"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8  ,
            ),
            child: SizedBox(
              height: 320,
              child: MyCarousel3(
                viewPortFraction: 1,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) =>Padding(
                  padding: const EdgeInsets.all(16),
                  child: MyPropertyCard(
                    recommendedProperties[index],
                    onTap: () =>
                        GoRouter.of(context).pushNamed("property_view", queryParameters: {"index":index.toString(), "type":"recommended"}),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ];

    return Container(
      color: Colors.transparent,
      child: ListView.separated(
        padding: const EdgeInsets.only(top: 30),
        itemCount: _widgets.length,
        itemBuilder: (context, index) => _widgets[index],
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 16),
      ),
    );
  }
}
