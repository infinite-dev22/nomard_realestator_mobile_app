import 'package:flutter/material.dart';

class MyRoundIcon extends StatelessWidget {
  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? size;
  final double padding;

  const MyRoundIcon.medium({
    super.key,
    required this.icon,
    this.backgroundColor,
    this.iconColor,
  })  : size = 30,
        padding = 12;

  const MyRoundIcon.small({
    super.key,
    required this.icon,
    this.backgroundColor,
    this.iconColor,
  })  : size = 20,
        padding = 6;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: padding, horizontal: padding),
      width: (size! <= 20) ? size! + 20 : null,
      height: (size! <= 20) ? size! + 20 : null,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Icon(
          icon,
          color: iconColor,
          size: size,
        ),
      ),
    );
  }
}
