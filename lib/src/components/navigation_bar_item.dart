import 'package:flutter/material.dart';
import '../app_colors.dart';

class NavBarItem extends StatelessWidget {
  final bool isSelected;
  final String label;
  final IconData? icon;
  final void Function()? onPressed;
  const NavBarItem({
    super.key,
    this.label = '',
    required this.isSelected,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return isSelected
    ? TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xFFCDC1FF),
        fixedSize: const Size.fromWidth(126),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
        padding: const EdgeInsets.symmetric(vertical: 14)
      ),
      icon: Icon(icon, color: AppColors.accent),
      onPressed: () {},
      label: Text(label, style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color:  Colors.black),
    ))
    : IconButton(
        icon: Icon(icon),
        onPressed: onPressed,
        iconSize: 22,
        color: AppColors.pale,
      );
  }
}