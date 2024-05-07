import 'package:flutter/material.dart';

class LargeCard extends StatelessWidget {
  final String title;
  final String volum;
  final String price;

  const LargeCard(
      {super.key,
      required this.title,
      required this.volum,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 235,
      decoration: BoxDecoration(
          color: const Color(0xff9E00FF),
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                color: const Color(0xff06FFA5),
                borderRadius: BorderRadius.circular(30)),
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: const TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    volum,
                    style: const TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                        color: Color(0xffFFE500),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xff9E00FF),
                    borderRadius: BorderRadius.circular(90),
                    border:
                        Border.all(color: const Color(0xffffffff), width: 3)),
                child: const Icon(
                  Icons.add,
                  color: Color(0xffffffff),
                  size: 25,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
