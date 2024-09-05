import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/global/presentation/widget/tiles/my_tile.dart';

class ScheduleLayout extends StatelessWidget {
  const ScheduleLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[
      Row(
        children: [
          MyText.h3("Select A Date"),
        ],
      ),
      MyTile.raised(
        text: "Rent Property",
        onTap: () => showDateRangePicker(
            context: context,
            firstDate: DateTime.now().subtract(Duration(days: 365)),
            lastDate: DateTime.now().add(Duration(days: 365))),
      ),
      MyTile.raised(
        text: "Property Tour",
        onTap: () {},
      ),
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
              text: "Make A Schedule",
              onTap: () => GoRouter.of(context).pushNamed("tour"),
            ),
          ),
        ),
      ],
    );
  }
}
