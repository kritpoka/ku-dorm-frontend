import 'package:flutter/material.dart';

class ListTileIconWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  const ListTileIconWidget({super.key, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: color, size: 22),
    );
  }
}