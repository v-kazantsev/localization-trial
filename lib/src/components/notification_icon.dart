import 'package:flutter/material.dart';
import '../app_colors.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          const Icon(Icons.notifications, color: AppColors.accent, size: 24),
          Positioned(
            right: 2,
            top: 3,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(color: const Color(0xFFFF002E), borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ],
      ),
    );
  }
}