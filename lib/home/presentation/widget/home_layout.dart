import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_linked_text.dart';

import '../../../global/presentation/widget/carousels/my_carousel.dart';
import '../../../global/presentation/widget/property_card/my_property_card.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
    var _widgets = <Widget>[
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MyLinkedText.header(
              "Featured",
              "See all",
              color: Theme.of(context).colorScheme.primary,
              onPressed: () => GoRouter.of(context).pushNamed("featured"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
            ),
            child: SizedBox(
              height: 335,
              child: MyCarousel(
                children: List.generate(
                  properties.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(16),
                    child: MyPropertyCard(
                      properties[index],
                      width: size.width * .7,
                      onTap: () =>
                          GoRouter.of(context).pushNamed("property_view"),
                    ),
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
              top: 16,
            ),
            child: SizedBox(
              height: 335,
              child: MyCarousel(
                children: List.generate(
                  properties.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(16),
                    child: MyPropertyCard(
                      properties[index],
                      width: size.width * .7,
                      onTap: () =>
                          GoRouter.of(context).pushNamed("property_view"),
                    ),
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
              top: 16,
            ),
            child: SizedBox(
              height: 335,
              child: MyCarousel(
                viewPortFraction: .98,
                children: List.generate(
                  properties.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(16),
                    child: MyPropertyCard(
                      properties[index],
                      width: size.width * .7,
                      onTap: () =>
                          GoRouter.of(context).pushNamed("property_view"),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ];

    return ListView.separated(
      padding: const EdgeInsets.only(top: 30),
      itemCount: _widgets.length,
      itemBuilder: (context, index) => _widgets[index],
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 16),
    );
  }
}
