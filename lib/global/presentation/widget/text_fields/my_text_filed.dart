import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_property/global/presentation/bloc/text_field/my_text_field_bloc.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_abstract_text_filed.dart';

class MyTextFiled extends StatelessWidget {
  final String? hint;
  final String? purpose;
  final TextEditingController? controller;
  final bool disabled;
  final bool obsecure;
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
  }) : obsecure = false;

  const MyTextFiled.obsecure({
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
    return BlocProvider(
      create: (context) => MyTextFieldBloc(),
      child: (obsecure == true)
          ? MyAbstractTextFiled.obsecure(
              hint: hint,
              purpose: purpose,
              controller: controller,
              disabled: disabled,
              prefixIcon: prefixIcon,
            )
          : MyAbstractTextFiled(
              hint: hint,
              purpose: purpose,
              controller: controller,
              disabled: disabled,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
            ),
    );
  }
}
