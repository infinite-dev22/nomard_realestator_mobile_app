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
    this.size = 30,
    this.padding = 12,
  });

  const MyRoundIcon.small({
    super.key,
    required this.icon,
    this.backgroundColor,
    this.iconColor,
    this.size = 20,
    this.padding = 6,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: padding, horizontal: padding),
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
