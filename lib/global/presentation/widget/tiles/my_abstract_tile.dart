import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class MyAbstractTile extends StatelessWidget {
  final String text;
  final bool disabled;
  final double width;
  final IconData? rightIcon;
  final IconData? icon;

  const MyAbstractTile({
    super.key,
    this.text = "Tile",
    this.disabled = false,
    this.width = double.infinity,
    this.icon,
  }) : rightIcon = null;

  const MyAbstractTile.navigator({
    super.key,
    this.text = "Tile",
    this.disabled = false,
    this.width = double.infinity,
    this.icon,
  }) : rightIcon = OctIcons.chevron_right;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: (icon != null) ? Icon(icon) : null,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MyText.regular(text),
        ],
      ),
      titleTextStyle: const TextStyle(fontSize: 14),
      trailing: (rightIcon != null) ? Icon(rightIcon) : null,
    );
  }
}
