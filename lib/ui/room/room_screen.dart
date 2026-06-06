import 'package:flutter/material.dart';
import 'package:ku_dorm_frontend/ui/room/widgets/info_card_widget.dart';
import 'package:ku_dorm_frontend/ui/room/widgets/room_info_widget.dart';
import 'package:ku_dorm_frontend/ui/room/widgets/roommates_card_widget.dart';
import 'package:ku_dorm_frontend/ui/widgets/header_screen_widget.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          spacing: 16,
          children: [
            HeaderScreenWidget(
              titleEng: 'ห้องของฉัน',
              titleThai: 'MY ROOM',
            ),
            RoomInfoWidget(),
            RoommatesCardWidget(),
            InfoCardWidget(),
            SizedBox(height: 24,),
          ],
        ),
      ],
    );
  }
}
