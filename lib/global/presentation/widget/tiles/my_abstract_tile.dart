import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
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
      title: MyText.regular(text),
      trailing: (rightIcon != null) ? Icon(rightIcon) : null,
    );
    // return AnimatedContainer(
    //   margin: const EdgeInsets.symmetric(horizontal: 8),
    //   duration: const Duration(milliseconds: 350),
    //   width: width,
    //   height: 48,
    //   padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(10),
    //     color: isFlat
    //         ? Colors.transparent
    //         : disabled
    //             ? secondary
    //             : Theme.of(context).colorScheme.surface,
    //     border: isFlat
    //         ? Border.all(
    //             color: disabled
    //                 ? secondary
    //                 : Theme.of(context).colorScheme.surface,
    //             width: 1,
    //           )
    //         : null,
    //   ),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Row(
    //         children: [
    //           Icon(icon),
    //           const SizedBox(width: 8),
    //           MyText.regular(text),
    //         ],
    //       ),
    //       Icon(OctIcons.chevron_right),
    //     ],
    //   ),
    // );
  }
}
