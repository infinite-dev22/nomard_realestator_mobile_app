import 'package:flutter/material.dart';

class MyRoundImage extends StatelessWidget {
  final Widget widget;
  final Color? backgroundColor;
  final double? size;
  final double padding;
  final double? radius;
  final bool elevated;

  const MyRoundImage.medium({
    super.key,
    required this.widget,
    this.backgroundColor,
    this.radius,
    this.elevated = false,
  })  : size = 30,
        padding = 12;

  const MyRoundImage.small({
    super.key,
    required this.widget,
    this.backgroundColor,
    this.radius,
    this.elevated = false,
  })  : size = 20,
        padding = 6;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: padding, horizontal: padding),
      width: (size! <= 20) ? size! + 20 : null,
      height: (size! <= 20) ? size! + 20 : null,
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
      child: Center(child: widget),
    );
  }
}
