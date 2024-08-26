import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';

import '../constants/app_colors.dart';
import 'icon_holders/my_round_image.dart';

class SocialAuthWidget extends StatelessWidget {
  const SocialAuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyRoundImage.small(
            backgroundColor: secondaryLightest,
            widget: AnyLogo.tech.google.image(height: 48, width: 48),
            radius: 5,
          ),
          const SizedBox(width: 20),
          MyRoundImage.small(
            backgroundColor: secondaryLightest,
            widget: AnyLogo.tech.meta.image(height: 48, width: 48),
            radius: 5,
          ),
        ],
      );
  }
}
