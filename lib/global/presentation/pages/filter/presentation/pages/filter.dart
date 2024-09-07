import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/pages/filter/presentation/widget/filter_layout.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_back_button.dart';
import 'package:real_estate_property/global/presentation/widget/icon_holders/my_round_icon.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_text_field.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Builder(
          builder: (context) => MyBackButton(
            onTap: () => GoRouter.of(context).pop(),
          ),
        ),
        title: MyText.h2("Filter"),
        actions: [
          TextButton(
            onPressed: () {},
            child: MyText.regular(
              "Reset",
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
      body: const FilterLayout(),
    );
  }
}
