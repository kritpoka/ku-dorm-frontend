import 'package:flutter/material.dart';

class WelcomeBannerWidget extends StatelessWidget {
  const WelcomeBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Theme.of(context).colorScheme.primary,
        child: DefaultTextStyle(
          style: TextStyle(color: Colors.white),
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GOOD MORNING',
                        style: TextStyle(color: Colors.grey.shade400, fontSize: 12, letterSpacing: 1),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'สวัสดี, ธนพล 👋',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        'หอพักนิสิต ม.เกษตรศาสตร์ · พหลโยธิน 45',
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                      SizedBox(height: 18),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.room, color: Colors.white, size: 18),
                            SizedBox(width: 4),
                            Text('ห้อง A-204 · อาคาร B'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.notifications_none, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
