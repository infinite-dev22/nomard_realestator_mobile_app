import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/property_view/presentation/pages/about/presentation/widget/agent_item.dart';
import 'package:real_estate_property/property_view/presentation/pages/about/presentation/widget/facility_item.dart';

import '../../data/model/agent_model.dart';
import '../../data/model/facility_model.dart';

class AboutLayout extends StatelessWidget {
  const AboutLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var agent =
        AgentModel("assets/images/house_1.jpg", "Micheal Angelo", "Owner");

    var _facilities1 = <FacilityModel>[
      FacilityModel(Icons.bed_outlined, "8 Beds"),
      FacilityModel(MingCute.bath_line, "5 Baths"),
      FacilityModel(MingCute.exposure_fill, "3,000 sqft"),
    ];

    var _facilities2 = <FacilityModel>[
      FacilityModel(Icons.child_care_outlined, "Kids Area"),
      FacilityModel(MingCute.car_2_line, "Car Park"),
      FacilityModel(Icons.restaurant_menu_rounded, "Restaurant"),
      FacilityModel(MingCute.barbell_line, "Gym"),
      FacilityModel(Icons.local_laundry_service_outlined, "Laundry"),
      FacilityModel(Icons.shopping_cart_outlined, "Shopping"),
      FacilityModel(MingCute.swimming_pool_line, "Swimming Pool"),
      FacilityModel(MingCute.tree_2_line, "Garden"),
    ];

    var gridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: 80);

    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              _facilities1.length,
              (index) => FacilityItem.inline(_facilities1[index]),
            ),
          ),
          const SizedBox(height: 24),
          // Overview
          MyText.h3("Overview"),
          const SizedBox(height: 16),
          RichText(
            maxLines: 5,
            text: TextSpan(
              children: [
                const TextSpan(
                  text: "Lorem ipsum dolor sit amet, consetetur sadipscing "
                      "elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna "
                      "aliquyam erat, sed diam voluptua. At vero eos et accusam et "
                      "justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea ",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: secondary,
                    fontSize: 13,
                  ),
                ),
                TextSpan(
                  text: "Read more",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          // Location Map
          MyText.h3("Location"),
          const SizedBox(height: 16),
          Container(
            height: size.height * .25,
            width: double.infinity,
            decoration: BoxDecoration(
              color: secondary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: MyText.bold("Your Map Here..."),
            ),
          ),
          const SizedBox(height: 24),
          // Buyer's Agent
          MyText.h3("Buyer's Agent"),
          const SizedBox(height: 16),
          AgentItem(agent),
          const SizedBox(height: 24),
          // Facilities
          MyText.h3("Facilities"),
          const SizedBox(height: 16),
          SizedBox(
            height: size.height * .25,
            width: double.infinity,
            child: GridView.builder(
              gridDelegate: gridDelegate,
              itemCount: _facilities2.length,
              itemBuilder: (context, index) {
                return FacilityItem.nonInline(_facilities2[index]);
              },
            ),
          ),
          // Actions
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  MyText.h2(
                    "\$1,220",
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 4),
                  MyText.regular(
                    "Per Month",
                    color: secondary,
                  ),
                ],
              ),
              MyButton(
                text: "Book Now",
                width: size.width * .5,
                onTap: () => GoRouter.of(context).pushNamed("book"),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
