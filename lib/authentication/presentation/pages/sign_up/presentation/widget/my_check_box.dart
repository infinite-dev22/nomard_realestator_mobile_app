import 'package:flutter/material.dart';

import '../../../../../../global/presentation/widget/texts/my_text.dart';

class MyCheckBox extends StatelessWidget {
  final bool value;
  final Function(bool?)? onChanged;
  final String title;

  const MyCheckBox({
    super.key,
    this.title = "",
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          checkColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          side: WidgetStateBorderSide.resolveWith(
            (states) => BorderSide(
                width: 2, color: Theme.of(context).colorScheme.primary),
          ),
        ),
        MyText.regular(title)
      ],
    );
  }
}
