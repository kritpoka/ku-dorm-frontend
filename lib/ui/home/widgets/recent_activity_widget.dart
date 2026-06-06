import 'package:flutter/material.dart';
import 'package:ku_dorm_frontend/ui/widgets/list_tile_icon_widget.dart';

class RecentActivityWidget extends StatelessWidget {
  const RecentActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'กิจกรรมล่าสุด',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                color: Colors.grey.shade700,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'ดูทั้งหมด',
                style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 32, 78, 35)),
              ),
            ),
          ],
        ),

        Material(
          color: Colors.white,
          elevation: 0,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
            side: BorderSide(
              width: 0.5,
              color: Colors.grey,
            )
          ),
          child: Column(
            children: [
              ListTile(
                leading: ListTileIconWidget(color: Colors.green, icon: Icons.check_circle_outline),
                title: Text('แจ้งเตือนการชำระเงิน'),
                subtitle: Text('ใกล้ครบกำหนดชำระ'),
                trailing: Text('3 วันที่แล้ว'),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: ListTileIconWidget(color: Colors.blue, icon: Icons.receipt_long_outlined),
                title: Text('แจ้งเตือนการชำระเงิน'),
                subtitle: Text('ใกล้ครบกำหนดชำระ'),
                trailing: Text('3 วันที่แล้ว'),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: ListTileIconWidget(color: Colors.orange, icon: Icons.notifications_outlined),
                title: Text('แจ้งเตือนการชำระเงิน'),
                subtitle: Text('ใกล้ครบกำหนดชำระ'),
                trailing: Text('3 วันที่แล้ว'),
                onTap: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
