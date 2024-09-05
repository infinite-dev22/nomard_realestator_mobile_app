import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_back_button.dart';
import 'package:real_estate_property/global/presentation/widget/icon_holders/my_round_icon.dart';
import 'package:real_estate_property/global/presentation/widget/property_card/my_property_card.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_text_field.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

import '../../../global/data/model/property_model.dart';

class ExploreLayout extends StatelessWidget {
  const ExploreLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var property = PropertyModel(
      List<String>.of([
        "assets/images/house_1.jpg",
        "assets/images/house_1.jpg",
        "assets/images/house_1.jpg",
        "assets/images/house_1.jpg"
      ]),
      "name",
      "type",
      "location",
      "month",
      19000.0,
      5.0,
      true,
    );

    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: secondary,
          child: Center(
            child: MyText.regular(
              "Your Map Here",
              color: secondaryLightest,
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 8,
          right: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyBackButton(
                onTap: () => GoRouter.of(context).pop(),
              ),
              MyText.h2("Explore"),
              const SizedBox(width: 60),
            ],
          ),
        ),
        Positioned(
          top: 110,
          left: 30,
          right: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width * .74,
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
        Positioned(
          bottom: 80,
          left: 30,
          right: 30,
          child: MyPropertyCard(
            property,
            height: 160,
          ),
        ),
      ],
    );
  }
}
