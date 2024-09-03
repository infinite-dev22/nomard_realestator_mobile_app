import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import 'my_abstract_button.dart';

class MyButton extends StatelessWidget {
  final String text;
  final bool disabled;
  final bool busy;
  final bool outlined;
  final double width;
  final Widget? widget;
  final Function() onTap;

  const MyButton({
    super.key,
    this.text = "Button",
    this.disabled = false,
    this.busy = false,
    this.outlined = false,
    this.width = double.infinity,
    this.widget,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return (!disabled && !busy)
        ? Bounceable(
            onTap: onTap,
            child: MyAbstractButton(
              text: text,
              outlined: outlined,
              width: width,
              widget: widget,
            ),
          )
        : MyAbstractButton(
            text: text,
            disabled: disabled,
            busy: busy,
            outlined: outlined,
            width: width,
            widget: widget,
          );
  }
}
