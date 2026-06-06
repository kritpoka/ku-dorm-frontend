import 'package:flutter/material.dart';

class PaymentWidget extends StatelessWidget {
  final String status;
  final int amount;
  final int day;
  final String month;
  final String year;

  const PaymentWidget({super.key, required this.status, required this.amount, required this.month, required this.year, required this.day});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('PAYMENT DUE', style: TextStyle(color: Colors.orange, fontSize: 12, letterSpacing: 1),),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.orange.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(22)
                  ),
                  child: Row(
                    children: [
                      Text(status, style: TextStyle(color: Colors.orange),)
                    ],
                  ),
                )
              ],
            ),

            SizedBox(height: 18,),

            Text(
              '฿ $amount', 
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'ค่าหอพักเดือน$month $year',
              style: TextStyle(
                color: Colors.grey
              ),
            ),

            SizedBox(height: 10,),

            Row(
              spacing: 8,
              children: [
                Icon(Icons.access_time, color: Colors.orange,),
                Text(
                  'ครบกำหนด $day $month $year',
                  style: TextStyle(color: Colors.orange),
                )
              ],
            ),

            SizedBox(height: 10,),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                iconColor: Colors.white,
                foregroundColor: Colors.white
              ), 
              child: Row(
                spacing: 12,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.qr_code),
                  Text('ชำระเงิน')
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}