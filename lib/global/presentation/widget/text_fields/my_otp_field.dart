import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../constants/app_colors.dart';

class MyOtpField extends StatelessWidget {
  final TextEditingController? controller;
  final bool disabled;

  const MyOtpField({
    super.key,
    this.controller,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final pinTheme = PinTheme(
      width: 48,
      height: 48,
      textStyle: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: secondaryLightest),
        color: secondaryLightest,
        borderRadius: BorderRadius.circular(8),
      ),
    );

    return Pinput(
      controller: controller,
      autofocus: true,
      defaultPinTheme: pinTheme,
      disabledPinTheme: pinTheme,
      errorPinTheme: pinTheme,
      focusedPinTheme: pinTheme,
      followingPinTheme: pinTheme,
      submittedPinTheme: pinTheme,
    );
  }
}
