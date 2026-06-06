import 'package:flutter/material.dart';
import 'package:ku_dorm_frontend/ui/profile/widgets/profile_card_widget.dart';
import 'package:ku_dorm_frontend/ui/widgets/list_tile_icon_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PROFILE',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 12,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  'โปรไฟล์',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ],
            ),

            ProfileCardWidget(), 

            Card(
              color: Colors.white,
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ListTile(
                  leading: ListTileIconWidget(color: Colors.amber, icon: Icons.notifications_none),
                  title: Text('การแจ้งเตือน'),
                  trailing: Icon(Icons.chevron_right, color: Colors.grey,),
                  contentPadding: EdgeInsets.all(0),
                  onTap: () {},
                ),
              ),
            ),

            Text(
              'การตั้งค่า',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),

            Card(
              color: Colors.white,
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ListTile(
                  leading: ListTileIconWidget(color: Color(0xFF5C8A6E), icon: Icons.help_outline),
                  title: Text('ช่วยเหลือ & คำถามที่พบบ่อย'),
                  trailing: Icon(Icons.chevron_right, color: Colors.grey,),
                  contentPadding: EdgeInsets.all(0),
                  onTap: () {},
                ),
              ),
            ),

            _buildLogoutButton(context),
            SizedBox(height: 24,)
          ],
        ),
      ],
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton.icon(
        style: TextButton.styleFrom(
          backgroundColor: Colors.red.withValues(alpha: 0.05)
        ),
        onPressed: () {},
        icon: const Icon(Icons.logout, color: Colors.red, size: 18),
        label: const Text(
          'ออกจากระบบ',
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600, fontSize: 15),
        ),
      ),
    );
  }
}