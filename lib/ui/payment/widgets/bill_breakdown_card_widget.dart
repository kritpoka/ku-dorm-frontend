import 'package:flutter/material.dart';
import 'package:ku_dorm_frontend/ui/widgets/list_tile_icon_widget.dart';

class BillBreakdownCardWidget extends StatelessWidget {
  const BillBreakdownCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          spacing: 4,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'รายการค่าใช้จ่าย',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            ListTile(
              leading: ListTileIconWidget(color: Color(0xFF5C8A6E), icon: Icons.bed_outlined),
              title: Text('รายการค่าใช้จ่าย'),
              subtitle: Text(
                'อัตราค่าเช่า / เดือน',
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Text(
                '฿1,800',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              contentPadding: EdgeInsets.all(0),
            ),

            ListTile(
              leading: ListTileIconWidget(color: Color(0xFF4A90C4), icon: Icons.water_drop_outlined),
              title: Text('ค่าน้ำประปา'),
              subtitle: Text(
                'มาตร 120 → 132 · 12 หน่วย × ฿18',
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Text(
                '฿216',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              contentPadding: EdgeInsets.all(0),
            ),

            ListTile(
              leading: ListTileIconWidget(color: Color(0xFFF5A623), icon: Icons.bolt_outlined),
              title: Text('ค่าไฟฟ้า'),
              subtitle: Text(
                'มาตร 1,240 → 1,302 · 62 หน่วย × ฿7',
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Text(
                '฿434',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              contentPadding: EdgeInsets.all(0),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'ยอดรวมทั้งสิ้น',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const Text(
                  '฿ 2,450',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}