import 'package:flutter/material.dart';
import 'package:ku_dorm_frontend/ui/home/widgets/quick_actions_widget.dart';
import 'package:ku_dorm_frontend/ui/home/widgets/recent_activity_widget.dart';
import 'package:ku_dorm_frontend/ui/home/widgets/welcome_banner_widget.dart';
import 'package:ku_dorm_frontend/ui/widgets/payment_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          spacing: 18,
          children: [
            WelcomeBannerWidget(),
            PaymentWidget(
              status: 'ค้างชำระ',
              amount: 2450,
              month: 'พฤษภาคม',
              year: '2026',
              day: 5,
            ),
            QuickActionsWidget(),
            RecentActivityWidget(),
            SizedBox(height: 24,)
          ],
        ),
      ],
    );
  }
}