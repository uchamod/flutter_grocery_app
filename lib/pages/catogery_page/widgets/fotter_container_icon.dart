import 'package:flutter/material.dart';

class StarIcon extends StatelessWidget {
  final starColor;
  const StarIcon({super.key, required this.starColor});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      size: 30,
      color: starColor,
    );
  }
}
