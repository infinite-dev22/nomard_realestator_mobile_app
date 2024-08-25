import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class HelpItem extends StatelessWidget {
  const HelpItem({super.key});

  @override
  Widget build(BuildContext context) {
    bool showContent = false;
    return AnimatedContainer(
        padding: const EdgeInsets.all(16),
        duration: const Duration(milliseconds: 350),
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow.withOpacity(.1),
              spreadRadius: 1,
              blurRadius: .1,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => showContent = !showContent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText.bold(
                    "This is a title text",
                    color: secondaryDark,
                  ),
                  (showContent == true)
                      ? const Icon(FontAwesome.chevron_up_solid)
                      : const Icon(FontAwesome.chevron_down_solid),
                ],
              ),
            ),
            if ((showContent == true))
              Column(
                children: [
                  const SizedBox(height: 16),
                  MyText.regular(
                    "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer. Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.",
                    color: secondary,
                  ),
                ],
              ),
          ],
        ));
  }
}
