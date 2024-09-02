import 'package:flutter/material.dart';

import '../../../../../../global/presentation/constants/app_colors.dart';

class MyTextArea extends StatelessWidget {
  final String? hint;
  final bool disabled;
  final TextEditingController? controller;

  const MyTextArea({
    super.key,
    this.hint,
    this.disabled = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        minLines: 7,
        maxLines: 10,
        enabled: !disabled,
        maxLength: 200,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 10.0,
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: secondary,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          enabled: !disabled,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: secondaryLightest,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: secondaryLightest,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: secondaryLightest,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: secondaryLightest,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: secondaryLightest,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: secondaryLightest,
            ),
          ),
          fillColor: secondaryLightest,
          filled: true,
          isDense: true,
          counter: null,
          counterText: "",
        ),
      ),
    );
  }
}
