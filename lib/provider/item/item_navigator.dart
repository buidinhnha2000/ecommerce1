import 'package:flutter/material.dart';

const List<FooterItem> items = [
  FooterItem(Icons.home, "Home"),
  FooterItem(Icons.email_outlined, "Email"),
  FooterItem(Icons.video_call_outlined, "Live"),
  FooterItem(Icons.notifications_none, "Notifi"),
  FooterItem(Icons.manage_accounts_outlined, "Profile"),
];
class FooterItem {
  final String text;
  final IconData icon;

  const FooterItem(this.icon, this.text);
}