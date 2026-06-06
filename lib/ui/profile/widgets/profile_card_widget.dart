import 'package:flutter/material.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: primary,
                  child: const Text(
                    'SW',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'ธนพล มานะ',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'thanaphon.m@ku.th',
                      style: TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      decoration: BoxDecoration(
                        color: primary.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'นิสิต · Student',
                        style: TextStyle(
                          color: primary,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 14),
            const Divider(height: 1),
            _profileInfoRow('รหัสนิสิต', '6610501234'),
            const Divider(height: 1),
            _profileInfoRow('คณะ', 'วิศวกรรมศาสตร์'),
          ],
        ),
      ),
    );
  }
}

Widget _profileInfoRow(String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(color: Colors.grey.shade600)),
        Text(value, style: const TextStyle(fontWeight: FontWeight.w500)),
      ],
    ),
  );
}