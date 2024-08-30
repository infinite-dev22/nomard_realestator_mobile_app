import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';

import '../../../../../../../widget/icon_holders/my_round_icon.dart';
import '../../../../../../../widget/property_card/my_property_card.dart';
import '../../../../../../../widget/text_fields/my_text_field.dart';
import '../../../../../../../widget/texts/my_text.dart';

class RecommendedPropertiesLayout extends StatelessWidget {
  const RecommendedPropertiesLayout({super.key});

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

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: true,
          pinned: true,
          forceElevated: true,
          leading: const MyRoundIcon.small(
            icon: Icons.arrow_back,
            elevated: true,
          ),
          title: MyText.h2("Filter"),
          actions: [
            Badge(
              label: MyText.caption(
                "5",
                color: Colors.white,
              ),
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: const MyRoundIcon.small(
                icon: Icons.notifications_none_rounded,
                elevated: true,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size(70, 70),
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 10,
                left: 16,
                right: 16,
              ),
              child: LayoutBuilder(
                builder: (context, constraints) => Row(
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
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: .79),
          delegate: SliverChildBuilderDelegate(
            childCount: properties.length,
            (context, index) =>
                MyPropertyCard(properties[index], width: size.width * .5),
          ),
        )
      ],
    );
  }
}
