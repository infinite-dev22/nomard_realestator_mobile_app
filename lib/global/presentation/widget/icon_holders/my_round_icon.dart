import 'package:flutter/material.dart';

class MyRoundIcon extends StatelessWidget {
  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? size;
  final double? radius;
  final double padding;
  final bool elevated;

  const MyRoundIcon.medium({
    super.key,
    required this.icon,
    this.backgroundColor,
    this.iconColor,
    this.radius,
    this.size = 30,
    this.elevated = false,
  }) : padding = 12;

  const MyRoundIcon.small({
    super.key,
    required this.icon,
    this.backgroundColor,
    this.iconColor,
    this.radius,
    this.size = 20,
    this.elevated = false,
  }) : padding = 6;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: padding, horizontal: padding),
      width: (size! <= 20) ? size! + 20 : size,
      height: (size! <= 20) ? size! + 20 : size,
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(radius ?? 50),
        boxShadow: (elevated == true)
            ? [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow.withOpacity(.1),
                  spreadRadius: 1,
                  blurRadius: .1,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ]
            : null,
      ),
      child: Center(
        child: Icon(
          icon,
          color: iconColor,
          size: (size! <= 20) ? 20 : 28,
        ),
      ),
    );
  }
}
