import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:real_estate_property/global/presentation/widget/icon_holders/my_round_icon.dart';

class MyAppbarActionsButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;

  const MyAppbarActionsButton({
    super.key,
    required this.icon,
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
          child: MyRoundIcon.small(
            icon: icon,
          ),
        ),
      ),
    );
  }
}
