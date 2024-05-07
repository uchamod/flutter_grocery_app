import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: const Color(0xffF2E4CE),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xffFF9900), width: 1)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Get 100% off on Groceries Plus T&C Apply",
              style: TextStyle(color: Color(0xffFF9900), fontSize: 18),
            ),
            Text("Sped payments with master and visa",
                style: TextStyle(
                    color: const Color(0xff3B3636).withOpacity(0.5),
                    fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
