import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../../global/presentation/widget/buttons/my_back_button.dart';
import '../../../../../../global/presentation/widget/icon_holders/my_round_icon.dart';
import '../../../../../../global/presentation/widget/text_fields/my_text_field.dart';
import '../../../../../../global/presentation/widget/texts/my_text.dart';
import '../widget/featured_layout.dart';

class Featured extends StatelessWidget {
  const Featured({super.key});

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
        title: MyText.h2("Featured"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Badge(
              label: MyText.caption(
                "5",
                color: Colors.white,
              ),
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: const MyRoundIcon.small(
                icon: Icons.notifications_none_rounded,
                elevated: true,
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 70),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .74,
                  child: const MyTextField(
                    hint: "Search",
                    prefixIcon: Icon(MingCute.search_2_fill),
                  ),
                ),
                MyRoundIcon.small(
                  icon: MingCute.settings_6_line,
                  radius: 10,
                  elevated: false,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      body: FeaturedLayout(),
    );
  }
}
