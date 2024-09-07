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
  final bool readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const MyAbstractTextFiled({
    super.key,
    this.hint,
    this.purpose,
    this.controller,
    this.disabled = false,
    this.readOnly = false,
    this.suffixIcon,
    this.prefixIcon,
  }) : obsecure = false;

  const MyAbstractTextFiled.obsecure({
    super.key,
    this.hint,
    this.purpose,
    this.controller,
    this.disabled = false,
    this.readOnly = false,
    this.prefixIcon,
  })  : obsecure = true,
        suffixIcon = null;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyTextFieldBloc, MyTextFieldState>(
      builder: (blocContext, state) {
        if (state.status.isInitial) {
          blocContext
              .read<MyTextFieldBloc>()
              .add(ObsecureEvent(obsecure));
        }
        return TextFormField(
          enabled: !disabled,
          readOnly: readOnly,
          controller: controller,
          obscureText: state.obsecure,
          decoration: InputDecoration(
            suffixIcon: (obsecure == true)
                ? _buildViewIcon(blocContext, state)
                : suffixIcon,
            prefixIcon: prefixIcon,
            prefixIconConstraints: BoxConstraints.tight(
              const Size(50, 50),
            ),
            suffixIconConstraints: BoxConstraints.tight(
              const Size(50, 50),
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
            hintStyle: const TextStyle(color: secondaryDark, fontSize: 12),
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
        );
      },
    );
  }

  Widget _buildViewIcon(BuildContext blocContext, MyTextFieldState state) {
    return IconButton(
        onPressed: () => blocContext
            .read<MyTextFieldBloc>()
            .add(ObsecureEvent(!state.obsecure)),
        icon: (state.obsecure)
            ? const Icon(MingCute.eye_close_line)
            : const Icon(MingCute.eye_line));
  }
}
