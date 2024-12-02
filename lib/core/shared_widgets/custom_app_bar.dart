import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.appBarWidget,
    required this.icon,
    required this.onPressed,
  });

  final Widget appBarWidget;
  final Icon icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [appBarWidget, IconButton(onPressed: onPressed, icon: icon)],
    );
  }
}
