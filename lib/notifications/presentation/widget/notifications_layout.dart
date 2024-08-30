import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';
import 'package:real_estate_property/notifications/presentation/widget/notification_item.dart';

import '../../../../../../global/presentation/widget/icon_holders/my_round_icon.dart';
import '../../../../../../global/presentation/widget/property_card/my_property_card.dart';
import '../../../../../../global/presentation/widget/text_fields/my_text_field.dart';
import '../../../../../../global/presentation/widget/texts/my_text.dart';

class NotificationsLayout extends StatelessWidget {
  const NotificationsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var notifications = List<NotificationModel>.of(
      [
        NotificationModel(
            MingCute.check_line,
            Colors.deepPurpleAccent,
            "Payment Successful",
            "litora pharetra inani appareat ac vocibus lacus",
            "1m"),
        NotificationModel(
            FontAwesome.hire_a_helper_brand,
            Colors.redAccent,
            "New Service Available",
            "litora pharetra inani appareat ac vocibus lacus",
            "1m"),
        NotificationModel(
            MingCute.bookmark_line,
            Colors.blueAccent,
            "Booking Successful!",
            "litora pharetra inani appareat ac vocibus lacus",
            "1m"),
        NotificationModel(
            MingCute.bank_card_line,
            Colors.deepOrangeAccent,
            "Credit Card Connected",
            "litora pharetra inani appareat ac vocibus lacus",
            "1m"),
        NotificationModel(
            MingCute.user_setting_line,
            Colors.yellow,
            "Account Setup Successful!",
            "litora pharetra inani appareat ac vocibus lacus",
            "1m"),
      ],
    );

    var size = MediaQuery.of(context).size;

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.only(bottom: 16),
          sliver: SliverAppBar(
            centerTitle: true,
            pinned: true,
            forceElevated: true,
            leading: const MyRoundIcon.small(
              icon: Icons.arrow_back,
              elevated: true,
            ),
            title: MyText.h2("Notifications"),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: notifications.length,
              (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: NotificationItem(notifications[index]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
