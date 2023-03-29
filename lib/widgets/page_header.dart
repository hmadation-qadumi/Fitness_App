import 'package:flutter/material.dart';
import 'app_icon.dart';

class PageHeader extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final String title;
  const PageHeader(
      {super.key,
      required this.leftIcon,
      required this.rightIcon,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      AppIcon(
        icon: leftIcon,
        backgroundColor: Colors.grey.shade400,
      ),
      Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      AppIcon(
        icon: rightIcon,
        backgroundColor: Colors.amber,
        iconSize: 20,
      ),
    ]);
  }
}
