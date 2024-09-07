import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_back_button.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_notification_button.dart';
import 'package:real_estate_property/global/presentation/widget/icon_holders/my_round_icon.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_text_field.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/home/presentation/pages/nearby_location/presentation/widget/nearby_location_layout.dart';
import 'package:real_estate_property/home/presentation/pages/recommended_properties/presentation/widget/recommended_properties_layout.dart';

class RecommendedProperties extends StatelessWidget {
  const RecommendedProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Builder(
            builder: (context) => MyBackButton(
              onTap: () => GoRouter.of(context).pop(),
            ),
          ),
          title: MyText.h2("Recommended Properties"),
          actions: [
            MyNotificationButton(
              onTap: () => GoRouter.of(context).pushNamed("notification"),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 70),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
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
          ),
        ),
        body: const RecommendedPropertiesLayout());
  }
}
