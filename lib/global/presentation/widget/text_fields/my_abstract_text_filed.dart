import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';

import '../../bloc/text_field/my_text_field_bloc.dart';

class MyAbstractTextFiled extends StatelessWidget {
  final String? hint;
  final String? purpose;
  final TextEditingController? controller;
  final bool disabled;
  final bool obsecure;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const MyAbstractTextFiled({
    super.key,
    this.hint,
    this.purpose,
    this.controller,
    this.disabled = false,
    this.suffixIcon,
    this.prefixIcon,
  }) : obsecure = false;

  const MyAbstractTextFiled.obsecure({
    super.key,
    this.hint,
    this.purpose,
    this.controller,
    this.disabled = false,
    this.prefixIcon,
  })  : obsecure = true,
        suffixIcon = null;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyTextFieldBloc, MyTextFieldState>(
      builder: (blocContext, state) {
        return Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            enabled: !disabled,
            controller: controller,
            obscureText: !state.obsecure,
            decoration: InputDecoration(
              suffixIcon: suffixIcon ?? _buildViewIcon(blocContext, state),
              prefixIcon: prefixIcon,
              prefixIconConstraints: BoxConstraints.tight(
                const Size(30, 30),
              ),
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
      },
    );
  }

  Widget _buildViewIcon(BuildContext blocContext, MyTextFieldState state) {
    return IconButton(
        onPressed: () => blocContext
            .read<MyTextFieldBloc>()
            .add(ObsecureEvent(!state.obsecure)),
        icon: (state.obsecure == true)
            ? const Icon(MingCute.eye_line)
            : const Icon(MingCute.eye_close_line));
  }
}
