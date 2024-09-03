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
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: const HomeAppBar(),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) =>
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth * .88,
                      child: const MyTextField(
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
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: MyLinkedText.header(
                    "Featured",
                    "See all",
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    left: 8,
                    top: 16,
                    bottom: 16,
                  ),
                  child: Row(
                    children:
                        List<Widget>.generate(properties.length, (int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyPropertyCard(properties[index],
                            width: constraints.maxWidth * .7),
                      );
                    }),
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
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    left: 8,
                    top: 16,
                    bottom: 16,
                  ),
                  child: Row(
                    children:
                        List<Widget>.generate(properties.length, (int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyPropertyCard(properties[index],
                            width: constraints.maxWidth * .7),
                      );
                    }),
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
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    left: 8,
                    top: 16,
                    bottom: 16,
                  ),
                  child: Row(
                    children:
                        List<Widget>.generate(properties.length, (int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyPropertyCard(properties[index],
                            width: constraints.maxWidth - 30),
                      );
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
