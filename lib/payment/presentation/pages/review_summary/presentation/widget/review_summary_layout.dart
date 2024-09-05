import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_linked_text.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_titled_text.dart';
import 'package:real_estate_property/payment/presentation/pages/review_summary/presentation/widget/review_summary_item.dart';

import '../../../../../../global/data/model/property_model.dart';

class ReviewSummaryLayout extends StatelessWidget {
  const ReviewSummaryLayout({super.key});

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
    var widgets = <Widget>[
      ReviewSummaryItem(property),
      const Divider(color: secondary, thickness: 1,),
      const MyTitledText("Booking Date", "17 August, 2023 | 10:00 AM",),
      const MyTitledText("Check In", "21 August",),
      const MyTitledText("Check Out", "21 August",),
      const MyTitledText("Duration", "5 Days",),
      const MyTitledText("Booking Date", "17 August, 2023 | 10:00 AM",),
      const Divider(color: secondary, thickness: 1,),
      const MyTitledText("Amount", "\$1,900.00",),
      const MyTitledText("Tax", "\$10.00",),
      const MyTitledText("Total Amount", "\$1,910.00",),
      const Divider(color: secondary, thickness: 1,),
      MyLinkedText.normal("Payment Method", "Cash",color: Theme.of(context).colorScheme.primary,),
    ];

    return Column(
      children: [
        Expanded(
          flex: 12,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            itemCount: widgets.length,
            itemBuilder: (context, index) => widgets[index],
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 16),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: MyButton(
              text: "Continue",
              onTap: () => GoRouter.of(context).pushNamed("ticket"),
            ),
          ),
        ),
      ],
    );
  }
}
