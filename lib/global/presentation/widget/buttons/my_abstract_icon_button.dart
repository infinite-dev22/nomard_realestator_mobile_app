import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';

class MyAbstractIconButton extends StatelessWidget {
  final IconData? icon;
  final bool disabled;
  final bool busy;
  final bool outlined;
  final double? size;
  final double? radius;

  const MyAbstractIconButton({
    super.key,
    this.icon,
    this.disabled = false,
    this.busy = false,
    this.outlined = false,
    this.size = 50,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: size,
      height: size,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 25),
        color: outlined
            ? Colors.transparent
            : disabled
                ? secondary
                : Theme.of(context).colorScheme.primary,
        border: outlined
            ? Border.all(
                color: disabled
                    ? secondary
                    : Theme.of(context).colorScheme.primary,
                width: 1,
              )
            : null,
      ),
      child: busy
          ? CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation(
                outlined
                    ? disabled
                        ? secondary
                        : Theme.of(context).colorScheme.primary
                    : Colors.white,
              ),
              strokeWidth: 4,
            )
          : Icon(
              icon,
              color: outlined
                  ? disabled
                      ? secondary
                      : Theme.of(context).colorScheme.primary
                  : Colors.white,
              // size: 16,
            ),
    );
  }
}
