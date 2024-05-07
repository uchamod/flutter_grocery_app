import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_app/pages/productdetails_page/price_list.dart';
import 'package:grocery_app/pages/productdetails_page/product_appbar.dart';
import 'package:grocery_app/pages/widgets/shared/notification_card.dart';

class PruductDetails extends StatelessWidget {
  const PruductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: appbarLeading,
        title: appbarTitle,
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black26,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NotificationCard(),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 230,
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    color: const Color(0xffFFF500).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.shopping_cart_rounded,
                  size: 200,
                  color: const Color(0xff333333).withOpacity(0.7),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Product Information",
                style: TextStyle(
                    color: Color(0xff3B3636),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
                style: TextStyle(
                    color: const Color(0xff3B3636).withOpacity(0.7),
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Product Information",
                style: TextStyle(
                    color: Color(0xff3B3636),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
                style: TextStyle(
                    color: const Color(0xff3B3636).withOpacity(0.7),
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Price List",
                style: TextStyle(
                    color: Color(0xff3B3636),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const PriceList(
                number: 1,
                proName: "Green peas",
                volume: 100,
                unit: 'g',
              ),
              Divider(
                color: const Color(0xff000000).withOpacity(0.15),
                thickness: 1,
              ),
              const PriceList(
                number: 2,
                proName: "Brussels sprouts",
                volume: 75,
                unit: 'ml',
              ),
              Divider(
                color: const Color(0xff000000).withOpacity(0.15),
                thickness: 1,
              ),
              const PriceList(
                number: 3,
                proName: "Broccoli",
                volume: 150,
                unit: 'g',
              ),
              Divider(
                color: const Color(0xff000000).withOpacity(0.15),
                thickness: 1,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 220,
                  ),
                  Text(
                    "Total",
                    style: TextStyle(
                        color: Color(0xff3B3636),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 84,
                  ),
                  Text(
                    "230\$",
                    style: TextStyle(
                        color: Color(0xff9E00FF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        colors: [Color(0xffCC00FF), Color(0xffFFE500)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                  ),
                  child: const Center(
                    child: Text("Proceed To Pay",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 15,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
