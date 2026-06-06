import 'package:flutter/material.dart';

class QuickActionsWidget extends StatelessWidget {
  const QuickActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _ActionItem(icon: Icons.bed_outlined, label: 'ห้องของฉัน'),
        _ActionItem(icon: Icons.receipt_long_outlined, label: 'ใบแจ้งหนี้'),
        _ActionItem(icon: Icons.history, label: 'ประวัติการชำระ'),
        _ActionItem(icon: Icons.chat_bubble_outline, label: 'ต่อสัญญาหอ'),
      ],
    );
  }
}

class _ActionItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              width: 0.5,
              color: Color.fromARGB(255, 32, 78, 35),
            )
          ),
          child: Icon(icon, color: Color.fromARGB(255, 32, 78, 35), size: 26),
        ),

        SizedBox(height: 8),

        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 11),
        ),
      ],
    );
  }
}
