import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_back_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

import '../widget/notifications_layout.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: (GoRouter.of(context).canPop() == true)
              ? MyBackButton(
                  onTap: () => GoRouter.of(context).pop(),
                )
              : null,
          title: MyText.h2("Notifications"),
        ),
        body: const NotificationsLayout());
  }
}
