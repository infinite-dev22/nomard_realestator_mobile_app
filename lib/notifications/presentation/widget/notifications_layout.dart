import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/widget/icon_holders/my_round_icon.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';
import 'package:real_estate_property/notifications/presentation/widget/notification_item.dart';

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

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      itemCount: notifications.length,
      itemBuilder: (context, index) => NotificationItem(notifications[index]),
      separatorBuilder: (BuildContext context, int index) =>
      const SizedBox(height: 16),
    );
  }
}
