import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';

class MyTextFiled extends StatelessWidget {
  final String? hint;
  final String? purpose;
  final TextEditingController? controller;
  final bool disabled;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const MyTextFiled({
    super.key,
    this.hint,
    this.purpose,
    this.controller,
    this.disabled = false,
    this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        enabled: !disabled,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          prefixIconConstraints: BoxConstraints.tight(Size(30, 30)),
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
          hintText: hint,
          hintStyle: const TextStyle(color: secondary),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 10.0,
          ),
          fillColor: secondaryLightest,
          filled: true,
          isDense: true,
          counter: null,
          counterText: "",
          enabled: !disabled,
        ),
      ),
    );
  }
}
