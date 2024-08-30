import 'package:flutter/material.dart';

import '../widget/notifications_layout.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: NotificationsLayout());
  }
}
