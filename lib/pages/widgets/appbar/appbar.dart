import 'package:flutter/material.dart';

const double appbarConCircle = 50;
const double iconSize = 30;

Widget appBarLeading = Padding(
  padding: const EdgeInsets.all(3),
  child: Container(
    width: appbarConCircle,
    height: appbarConCircle,
    decoration: BoxDecoration(
        color: const Color(0xff9E00FF),
        borderRadius: BorderRadius.circular(90)),
    child: const Center(
      child: Icon(
        Icons.location_on,
        color: Color(0xffffffff),
        size: iconSize,
      ),
    ),
  ),
);

Widget appBarTitle = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Delivery Address",
      style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: const Color(0xff3B3636).withOpacity(0.5)),
    ),
    const Text("92 High Street , London",
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xff3B3636))),
  ],
);

Widget appBarAction = Padding(
  padding: const EdgeInsets.only(right: 10.0),
  child: Container(
    width: appbarConCircle,
    height: appbarConCircle,
    decoration: BoxDecoration(
        color: const Color(0xffFF9900).withOpacity(0.52),
        borderRadius: BorderRadius.circular(90)),
    child: const Center(
      child: Icon(
        Icons.shopping_bag_outlined,
        size: iconSize,
        color: Color(0xffffffff),
      ),
    ),
  ),
);
