import 'package:flutter/material.dart';
import '../app_colors.dart';

class ListMenuItem extends StatelessWidget {
  final bool isSelected;
  final String label;
  final void Function()? onTap;
  const ListMenuItem({
    super.key,
    required this.isSelected,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      label: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          height: 1.14,
          fontWeight: FontWeight.w400,
          color: isSelected ? AppColors.pale : AppColors.accent,
        ),
      ),
      backgroundColor: isSelected ? AppColors.accent : AppColors.pale,
      shape: const StadiumBorder(side: BorderSide(width: 2.0, color: Color(0xFFEBEBEB))),
      onPressed: onTap,
    );
  }
}