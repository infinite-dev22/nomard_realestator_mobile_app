import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/tiles/my_tile.dart';

class PaymentMethodsLayout extends StatelessWidget {
  const PaymentMethodsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[
      MyTile.raised(
        icon: FontAwesome.money_bill_1,
        text: "Cash",
        onTap: () => GoRouter.of(context).pushNamed("schedule"),
      ),
      MyTile.raised(
        widget: AnyLogo.tech.paypal.image(width: 25, height: 25),
        text: "PayPal",
        onTap: () => GoRouter.of(context).pushNamed("schedule"),
      ),
      MyTile.raised(
        widget: AnyLogo.tech.masterCard.image(width: 25, height: 25),
        text: "MasterCard",
        onTap: () => GoRouter.of(context).pushNamed("schedule"),
      ),
      MyTile.raised(
        widget: AnyLogo.tech.apple.image(width: 25, height: 25),
        text: "Apple Pay",
        onTap: () => GoRouter.of(context).pushNamed("schedule"),
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
              widget: const Icon(
                Icons.add,
                color: secondaryLight,
              ),
              text: "Add Card",
              onTap: () => GoRouter.of(context).pushNamed("add_card"),
            ),
          ),
        ),
      ],
    );
  }
}
