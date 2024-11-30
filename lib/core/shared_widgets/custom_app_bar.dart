import 'package:bookly_app/core/constants/assets/assets_images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
