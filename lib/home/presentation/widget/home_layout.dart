import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_linked_text.dart';

import '../../../global/presentation/widget/icon_holders/my_round_icon.dart';
import '../../../global/presentation/widget/property_card/my_property_card.dart';
import '../../../global/presentation/widget/text_fields/my_text_field.dart';
import 'home_app_bar.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

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

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeAppBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: constraints.maxWidth * .89,
                  child: MyTextField(
                    hint: "Search",
                    prefixIcon: Icon(MingCute.search_2_fill),
                  ),
                ),
                MyRoundIcon.small(
                  icon: MingCute.settings_6_line,
                  radius: 10,
                  elevated: false,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  iconColor: Colors.white,
                ),
              ],
            ),
            Column(
              children: [
                MyLinkedText(
                  "Featured",
                  "See all",
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 16),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 300),
                  child: CarouselView(
                    itemExtent: constraints.maxWidth * .7,
                    shrinkExtent: 300,
                    itemSnapping: true,
                    shape: InputBorder.none,
                    controller: CarouselController(initialItem: 1),
                    onTap: null,
                    elevation: 8,
                    children:
                        List<Widget>.generate(properties.length, (int index) {
                      return MyPropertyCard(properties[index],
                          width: constraints.maxWidth);
                    }),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                MyLinkedText(
                  "Nearby Location",
                  "See all",
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 16),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 300),
                  child: CarouselView(
                    itemExtent: constraints.maxWidth * .7,
                    shrinkExtent: 300,
                    itemSnapping: true,
                    shape: InputBorder.none,
                    onTap: null,
                    elevation: 8,
                    children:
                        List<Widget>.generate(properties.length, (int index) {
                      return MyPropertyCard(properties[index],
                          width: constraints.maxWidth);
                    }),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                MyLinkedText(
                  "Recommended Property",
                  "See all",
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 16),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 300),
                  child: CarouselView(
                    itemExtent: constraints.maxWidth,
                    shrinkExtent: 300,
                    itemSnapping: true,
                    shape: InputBorder.none,
                    onTap: null,
                    elevation: 8,
                    children:
                        List<Widget>.generate(properties.length, (int index) {
                      return MyPropertyCard(properties[index],
                          width: constraints.maxWidth);
                    }),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
