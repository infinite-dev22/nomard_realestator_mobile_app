import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/widget/tiles/my_tile.dart';

class BookingLayout extends StatelessWidget {
  const BookingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[
      MyTile.raised(
        text: "Buy Property",
        onTap: () {},
      ),
      MyTile.raised(
        text: "Rent Property",
        onTap: () {},
      ),
      MyTile.raised(
        text: "Property Tour",
        onTap: () {},
      ),
    ];

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      itemCount: widgets.length,
      itemBuilder: (context, index) => widgets[index],
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 16),
    );
  }
}
