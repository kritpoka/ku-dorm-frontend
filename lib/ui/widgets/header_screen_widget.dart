import 'package:flutter/material.dart';

class HeaderScreenWidget extends StatelessWidget {
  final String titleThai;
  final String titleEng;
  const HeaderScreenWidget({super.key, required this.titleThai, required this.titleEng});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleEng,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 12,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              titleThai,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none, size: 28),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}