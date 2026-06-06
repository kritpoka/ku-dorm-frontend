import 'package:flutter/material.dart';
import 'package:ku_dorm_frontend/ui/widgets/list_tile_icon_widget.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'ข้อมูลอาคาร',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTileIconWidget(color: Theme.of(context).colorScheme.primary, icon: Icons.room),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'อาคาร B – หอพักนิสิต\nถ.เหลือบัว 45 แขวงอาจณาย เขตตลุจรัก กทม.',
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 13, height: 1.5),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _amenityChip(Icons.wifi, 'Wi-Fi ฟรี', context),
                _amenityChip(Icons.pets, 'สัตว์', context),
                _amenityChip(Icons.local_laundry_service, 'เครื่องอบผ้า', context),
                _amenityChip(Icons.security, 'รปภ. 24 ชม.', context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _amenityChip(IconData icon, String label, BuildContext context) {
  final primary = Theme.of(context).colorScheme.primary;

  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    decoration: BoxDecoration(
      color: primary.withValues(alpha: 0.1),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: primary.withValues(alpha: 0.3)),
    ),
    child: Row(
      spacing: 4,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: primary),
        Text(label, style: TextStyle(fontSize: 12, color: primary)),
      ],
    ),
  );
}