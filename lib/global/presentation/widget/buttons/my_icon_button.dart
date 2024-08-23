import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import 'my_abstract_icon_button.dart';

class MyIconButton extends StatelessWidget {
  final IconData? icon;
  final bool disabled;
  final bool busy;
  final bool outlined;
  final double? size;
  final double? radius;
  final Function() onTap;

  const MyIconButton({
    super.key,
    this.icon,
    this.disabled = false,
    this.busy = false,
    this.outlined = false,
    this.size,
    this.radius,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return (!disabled && !busy)
        ? Bounceable(
            onTap: onTap,
            child: MyAbstractIconButton(
              icon: icon,
              outlined: outlined,
              size: size,
              radius: radius,
            ),
          )
        : MyAbstractIconButton(
            icon: icon,
            disabled: disabled,
            busy: busy,
            outlined: outlined,
            size: size,
            radius: radius,
          );
  }
}
