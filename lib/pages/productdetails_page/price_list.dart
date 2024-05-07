import 'package:flutter/material.dart';

class PriceList extends StatelessWidget {
  final int number;
  final String proName;
  final double volume;
  final String unit;
  const PriceList(
      {super.key,
      required this.number,
      required this.proName,
      required this.volume,
      required this.unit});

  //variables
  final double numberCircle = 25;
  final double iconCircle = 18;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: numberCircle,
          height: numberCircle,
          decoration: BoxDecoration(
              color: const Color(0xffFFE500),
              borderRadius: BorderRadius.circular(90)),
          child: Center(
              child: Text(
            number.toString(),
            style: const TextStyle(color: Color(0xff000000)),
          )),
        ),
        const SizedBox(
          width: 15,
        ),
        SizedBox(
          width: 120,
          child: Text(
            proName,
            style: TextStyle(
                color: const Color(0xff3B3636).withOpacity(0.7),
                fontSize: 14,
                fontWeight: FontWeight.normal),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        Container(
          width: 120,
          height: 30,
          decoration: BoxDecoration(
              color: const Color(0xffD9D9D9).withOpacity(0.5),
              borderRadius: BorderRadius.circular(40)),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "${volume.toStringAsFixed(0)}$unit",
                style: TextStyle(
                    fontSize: 13,
                    color: const Color(0xff3B3636).withOpacity(0.7)),
              ),
              Container(
                width: iconCircle,
                height: iconCircle,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    border:
                        Border.all(color: const Color(0xff3B3636), width: 1)),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    size: 12,
                    color: Color(0xff3B3636),
                  ),
                ),
              ),
              Container(
                width: iconCircle,
                height: iconCircle,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    border:
                        Border.all(color: const Color(0xff3B3636), width: 1)),
                child: const Center(
                  child: Icon(
                    Icons.remove,
                    size: 12,
                    color: Color(0xff3B3636),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
