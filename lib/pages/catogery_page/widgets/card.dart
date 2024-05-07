import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color containerColor;
  final Color borderColor;
  final String mainTitle;
  final String subTitle;
  final Color circle;

  const CategoryCard({
    super.key,
    required this.containerColor,
    required this.borderColor,
    required this.mainTitle,
    required this.subTitle,
    required this.circle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 95,
      decoration: BoxDecoration(
          color: containerColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor, width: 1)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainTitle,
                  style: TextStyle(
                      color: const Color(0xff3B3636).withOpacity(0.9),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      color: const Color(0xff3B3636).withOpacity(0.45),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  color: circle, borderRadius: BorderRadius.circular(90)),
            )
          ],
        ),
      ),
    );
  }
}
