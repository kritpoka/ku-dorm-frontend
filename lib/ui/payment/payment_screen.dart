import 'package:flutter/material.dart';
import 'package:ku_dorm_frontend/ui/payment/widgets/bill_breakdown_card_widget.dart';
import 'package:ku_dorm_frontend/ui/payment/widgets/payment_history_widget.dart';
import 'package:ku_dorm_frontend/ui/widgets/header_screen_widget.dart';
import 'package:ku_dorm_frontend/ui/widgets/payment_widget.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          spacing: 16,
          children: [
            HeaderScreenWidget(
              titleThai: 'ใบแจ้งหนี้', 
              titleEng: 'BILLING'
            ),
            PaymentWidget(status: 'ค้างชำระ', amount: 2450, month: 'พฤษภาคม', year: '2026', day: 5),
            BillBreakdownCardWidget(),
            PaymentHistoryWidget(),
            SizedBox(height: 24,)
          ],
        ),
      ],
    );
  }
}
