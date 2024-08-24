import 'package:flutter/material.dart';

class MyRoundIcon extends StatelessWidget {
  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? size;

  const MyRoundIcon({
    super.key,
    required this.icon,
    this.backgroundColor,
    this.iconColor,
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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
