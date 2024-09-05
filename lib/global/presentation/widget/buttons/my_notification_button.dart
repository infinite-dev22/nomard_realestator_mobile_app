import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:real_estate_property/global/presentation/widget/icon_holders/my_round_icon.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class MyNotificationButton extends StatelessWidget {
  final Function() onTap;

  const MyNotificationButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Material(
          shadowColor: Theme.of(context).colorScheme.shadow,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          elevation: 8,
          child: Badge(
            label: MyText.caption(
              "5",
              color: Colors.white,
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: const MyRoundIcon.small(
              icon: Icons.notifications_none_rounded,
            ),
          ),
        ),
      ),
    );
  }
}
