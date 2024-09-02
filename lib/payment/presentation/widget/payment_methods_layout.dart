import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/widget/tiles/my_tile.dart';

class PaymentMethodsLayout extends StatelessWidget {
  const PaymentMethodsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[
      MyTile.raised(
        icon: FontAwesome.money_bill_1,
        text: "Cash",
        onTap: () {},
      ),
      MyTile.raised(
        widget: AnyLogo.tech.paypal.image(width: 25, height: 25),
        text: "PayPal",
        onTap: () {},
      ),
      MyTile.raised(
        widget: AnyLogo.tech.masterCard.image(width: 25, height: 25),
        text: "MasterCard",
        onTap: () {},
      ),
      MyTile.raised(
        widget: AnyLogo.tech.apple.image(width: 25, height: 25),
        text: "Apple Pay",
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
