import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../global/presentation/widget/icon_holders/my_round_icon.dart';
import '../../../global/presentation/widget/text_fields/my_text_field.dart';
import '../widget/home_app_bar.dart';
import '../widget/home_layout.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const HomeAppBar(),
        titleTextStyle: const TextStyle(fontSize: 16),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 65),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: SizedBox(
                    width: size.width * .8,
                    child: const MyTextField(
                      hint: "Search",
                      prefixIcon: Icon(MingCute.search_2_fill),
                      readOnly: true,
                      disabled: true,
                    ),
                  ),
                  onTap: () => GoRouter.of(context).pushNamed("search"),
                ),
                GestureDetector(
                  child: MyRoundIcon.small(
                    icon: MingCute.settings_6_line,
                    radius: 10,
                    size: 50,
                    elevated: false,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    iconColor: Colors.white,
                  ),
                  onTap: () => GoRouter.of(context).pushNamed("filter"),
                ),
              ],
            ),
          ),
        ),
      ),
      body: const HomeLayout(),
    );
  }
}
