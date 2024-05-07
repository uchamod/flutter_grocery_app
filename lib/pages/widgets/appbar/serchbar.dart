import 'package:flutter/material.dart';

class serchBox extends StatelessWidget {
  const serchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: const Color(0xffD9D9D9).withOpacity(0.5),
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
                color: const Color(0xffD9D9D9).withOpacity(1), width: 2)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.search,
                size: 30,
                color: const Color(0xff333333).withOpacity(0.5),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                    hintText: "search here...",
                    hintStyle: TextStyle(
                        color: const Color(0xff3B3636).withOpacity(0.5),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 9)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
