import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_app/pages/widgets/appbar/appbar.dart';
import 'package:grocery_app/pages/widgets/appbar/serchbar.dart';
import 'package:grocery_app/pages/widgets/resuablewidgets/largecard.dart';
import 'package:grocery_app/pages/widgets/resuablewidgets/smallcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: appBarLeading,
        title: appBarTitle,
        actions: [appBarAction],
        shadowColor: Colors.black12,
        elevation: 1,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                serchBox(),
                SizedBox(height: 15),
                Text(
                  "Explore Categories",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3B3636)),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallCard(
                      MainConColor: Color(0xff9E00FF),
                      SubConColor: Color(0xff06FFA5),
                      title: "Vegetables",
                      para:
                          "Vegetables are parts of plants that are consumed by humans...",
                      textColor: Color(0xffffffff),
                    ),
                    SmallCard(
                      MainConColor: Color(0xff9E00FF),
                      SubConColor: Color(0xff06FFA5),
                      title: "Fish & Meat",
                      para:
                          "Fish is the flesh of an animal used for food, and by that the definition...",
                      textColor: Color(0xffffffff),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallCard(
                      MainConColor: Color(0xffFFE500),
                      SubConColor: Color(0xffFF9900),
                      title: "Vegetables",
                      para:
                          "Vegetables are parts of plants that are consumed by humans...",
                      textColor: Color(0xff3B3636),
                    ),
                    SmallCard(
                      MainConColor: Color(0xffFFE500),
                      SubConColor: Color(0xffFF9900),
                      title: "Fish & Meat",
                      para:
                          "Fish is the flesh of an animal used for food, and by that the definition...",
                      textColor: Color(0xff3B3636),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "For Sale and Low Cost",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3B3636)),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LargeCard(
                        title: "Washing Liquid",
                        volum: "220 ml",
                        price: "230\$"),
                    LargeCard(
                        title: "Coffee and Tea", volum: "100 g", price: "30\$")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
