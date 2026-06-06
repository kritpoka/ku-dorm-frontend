import 'package:flutter/material.dart';
import 'package:ku_dorm_frontend/ui/widgets/list_tile_icon_widget.dart';

class PaymentHistoryWidget extends StatelessWidget {
  const PaymentHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            'ประวัติการชำระเงิน',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 10),
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
                title: Text('เมษายน 2569', style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('ชำะแล้ว | PrompPay'),
                trailing: Text(
                  '฿2,310',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              ListTile(
                leading: ListTileIconWidget(color: Colors.green, icon: Icons.check_circle_outline),
                title: Text('มีนาคม 2569', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('ชำะแล้ว | PrompPay'),
                trailing: Text(
                  '฿2,180',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              ListTile(
                leading: ListTileIconWidget(color: Colors.green, icon: Icons.check_circle_outline),
                title: Text('กุมภาพันธ์ 2569', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('ชำะแล้ว | PrompPay'),
                trailing: Text(
                  '฿2,255',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}