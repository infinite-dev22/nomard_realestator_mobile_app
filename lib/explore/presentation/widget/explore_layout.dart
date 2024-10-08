import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/explore/data/repository/explore_data.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/icon_holders/my_round_icon.dart';
import 'package:real_estate_property/global/presentation/widget/property_card/my_property_card.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_text_field.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class ExploreLayout extends StatelessWidget {
  const ExploreLayout({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: (GoRouter.of(context).canPop() == true)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyText.h2("Explore"),
                  ],
                )
              : Center(
                  child: MyText.h2("Explore"),
                ),
        ),
        Positioned(
          top: 110,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: SizedBox(
                  width: size.width * .74,
                  child: const MyTextField(
                    hint: "Search",
                    prefixIcon: Icon(MingCute.search_2_fill),
                    readOnly: true,
                    disabled: true,
                  ),
                ),
                onTap: () => GoRouter.of(context).pushNamed("search"),
              ),
              GestureDetector(
                child: MyRoundIcon.small(
                  icon: MingCute.settings_6_line,
                  radius: 10,
                  size: 50,
                  elevated: false,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  iconColor: Colors.white,
                ),
                onTap: () => GoRouter.of(context).pushNamed("filter"),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 80,
          left: 30,
          right: 30,
          child: MyPropertyCard(
            exploreProperties[0],
            height: 162,
            onTap: () => GoRouter.of(context).pushNamed("property_view", queryParameters: {"index":"0", "type":"explore"}),
          ),
        ),
      ],
    );
  }
}
