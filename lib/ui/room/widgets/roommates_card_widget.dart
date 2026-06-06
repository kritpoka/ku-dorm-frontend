import 'package:flutter/material.dart';

class RoommatesCardWidget extends StatelessWidget {
  const RoommatesCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          spacing: 0,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'เพื่อนร่วมห้อง',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text('2 / 2 คน', style: TextStyle(color: Colors.grey.shade500, fontSize: 13)),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 22,
                child: Text(
                  "ธพ",
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              title: Text('ธนพล ยานะ (คุณ)'),
              subtitle: Text('รหัสนิสิต 6610504477', style: TextStyle(color: Colors.grey),),
              contentPadding: EdgeInsets.all(0),
            ),
            
            Divider(),
            
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.brown,
                radius: 22,
                child: Text(
                  "กฤ",
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              title: Text('กฤษณ์ ไวดี'),
              subtitle: Text('รหัสนิสิต 6610501234', style: TextStyle(color: Colors.grey),),
              contentPadding: EdgeInsets.all(0),
            )
          ],
        ),
      ),
    );
  }
}