import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';

class MyAbstractButton extends StatelessWidget {
  final String text;
  final bool disabled;
  final bool busy;
  final bool outlined;
  final double width;

  const MyAbstractButton({
    super.key,
    this.text = "Button",
    this.disabled = false,
    this.busy = false,
    this.outlined = false,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      duration: const Duration(milliseconds: 350),
      width: width,
      height: 48,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
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
          : Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: outlined
                    ? disabled
                        ? secondary
                        : Theme.of(context).colorScheme.primary
                    : Colors.white,
              ),
            ),
    );
  }
}
