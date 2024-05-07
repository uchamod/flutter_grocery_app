import 'package:flutter/material.dart';

class RowDetails extends StatelessWidget {
  final int number;
  final String discription;
  const RowDetails(
      {super.key, required this.number, required this.discription});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
              color: const Color(0xffFFE500),
              borderRadius: BorderRadius.circular(90)),
          margin: const EdgeInsets.only(right: 8),
          child: Center(
              child: Text(
            number.toString(),
            style: const TextStyle(
                color: Color(0xff000000), fontWeight: FontWeight.normal),
          )),
        ),
        SizedBox(
          width: 300,
          child: Text(discription,
              style: TextStyle(
                  color: const Color(0xff3B3636).withOpacity(0.9),
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
        )
      ],
    );
  }
}
