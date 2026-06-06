import 'package:flutter/material.dart';

class RoomInfoWidget extends StatelessWidget {
  const RoomInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Image.network('https://sa.ku.ac.th/wp-content/uploads/2022/08/132338279-1.png', fit: BoxFit.cover,),
          ),
      
          Padding(
            padding: EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'A-204',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: primary.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'เข้าพักแล้ว',
                        style: TextStyle(color: primary, fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const Text('อาคาร B · ชั้น 2', style: TextStyle(color: Colors.grey)),

                const SizedBox(height: 12),
                const Divider(),
                const SizedBox(height: 8),

                Row(
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 12,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _infoItem('ประเภทห้อง', 'ห้องคู่'),
                          _infoItem('เข้าพัก เมื่อ', '20 พ.ค. 2569'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 12,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _infoItem('ความจุ', '2 คน'),
                          _infoItem('ค่าห้อง / เดือน', '฿1,800'),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _infoItem(String label, String value) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
    ],
  );
}