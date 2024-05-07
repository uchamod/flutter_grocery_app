import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  final Color MainConColor;
  final SubConColor;
  final title;
  final String para;
  final Color textColor;

  const SmallCard(
      {super.key,
      required this.MainConColor,
      required this.SubConColor,
      required this.title,
      required this.para,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 225,
      decoration: BoxDecoration(
          color: MainConColor, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: textColor, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              para,
              style: TextStyle(
                  color: textColor, fontSize: 14, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: SubConColor, borderRadius: BorderRadius.circular(20)),
            )
          ],
        ),
      ),
    );
  }
}
