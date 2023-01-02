import 'package:flutter/material.dart';
import '../app_colors.dart';

class CodesScreenItem extends StatelessWidget {
  final String label;
  final Color color;
  final Color iconColor;
  const CodesScreenItem({
    super.key,
    required this.label,
    required this.color,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 318,
      child: Card(
        margin: const EdgeInsets.only(bottom: 14),
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0.0,
        child: Row(children: [
          Expanded(
            child: ListTile(
              leading: Container(
                height: 37,
                width: 36,
                decoration: BoxDecoration(
                  color: iconColor,
                  borderRadius: BorderRadius.circular(10.28),
                ),
                child: const Icon(
                  Icons.qr_code,
                  color: AppColors.accent,
                  size: 18,
                ),
              ),
              title: Text(label, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.accent)),
            ),
          ),
        ],)
      ),
    );
  }
}