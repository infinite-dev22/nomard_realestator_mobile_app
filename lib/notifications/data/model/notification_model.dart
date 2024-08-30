import 'package:flutter/material.dart';

class NotificationModel {
  final IconData icon;
  final Color backgroundColor;
  final String title;
  final String bodyPreview;
  final String time;

  NotificationModel(
    this.icon,
    this.backgroundColor,
    this.title,
    this.bodyPreview,
    this.time,
  );
}
