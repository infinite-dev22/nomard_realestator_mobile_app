import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import '../../constants/app_colors.dart';
import 'my_abstract_tile.dart';

class MyTile extends StatelessWidget {
  final String text;
  final bool bouncable;
  final Function() onTap;
  final bool isNavigator;
  final bool disabled;
  final double width;
  final IconData? icon;

  const MyTile.flat({
    super.key,
    required this.text,
    required this.onTap,
    this.isNavigator = false,
    this.disabled = false,
    this.icon,
  })  : bouncable = false,
        width = double.infinity;

  const MyTile.raised({
    super.key,
    required this.text,
    required this.onTap,
    this.disabled = false,
    this.icon,
  })  : bouncable = true,
        isNavigator = false,
        width = double.infinity;

  const MyTile.navigator({
    super.key,
    required this.text,
    required this.onTap,
    this.disabled = false,
    this.icon,
  })  : bouncable = true,
        isNavigator = true,
        width = double.infinity;

  @override
  Widget build(BuildContext context) {
    return bouncable
        ? Bounceable(
            onTap: onTap,
            child: Material(
              shadowColor: Theme.of(context).colorScheme.shadow,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              elevation: 18,
              child: (isNavigator)
                  ? MyAbstractTile.navigator(
                      text: text,
                      width: width,
                      icon: icon,
                    )
                  : MyAbstractTile(
                      text: text,
                      width: width,
                      icon: icon,
                    ),
            ),
          )
        : GestureDetector(
            onTap: onTap,
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: secondaryLightest,
              ),
              child: (isNavigator)
                  ? MyAbstractTile.navigator(
                      text: text,
                      width: width,
                      icon: icon,
                    )
                  : MyAbstractTile(
                      text: text,
                      width: width,
                      icon: icon,
                    ),
            ),
          );
  }
}
