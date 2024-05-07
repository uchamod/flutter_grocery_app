import 'package:flutter/material.dart';
import 'package:grocery_app/pages/catogery_page/widgets/card.dart';
import 'package:grocery_app/pages/catogery_page/widgets/category_appbar.dart';
import 'package:grocery_app/pages/catogery_page/widgets/fotter_container_details.dart';
import 'package:grocery_app/pages/catogery_page/widgets/fotter_container_icon.dart';
import 'package:grocery_app/pages/widgets/shared/notification_card.dart';

class Category extends StatelessWidget {
  const Category({super.key});

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
              const Text("All Categories",
                  style: TextStyle(
                      color: Color(0xff3B3636),
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(
                    containerColor: Color(0xff0057FF),
                    borderColor: Color(0xff0057FF),
                    mainTitle: 'Vegetables & \n Fruits',
                    subTitle: '20+ more ...',
                    circle: Color(0xff0E00AC),
                  ),
                  CategoryCard(
                      containerColor: Color(0xff70FF00),
                      borderColor: Color(0xff00FF29),
                      mainTitle: 'Bites & \nDrinks',
                      subTitle: '53+ more ...',
                      circle: Color(0xff06FFA5)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(
                      containerColor: Color(0xff00E0FF),
                      borderColor: Color(0xff00F0FF),
                      mainTitle: 'Cooking & \nElements',
                      subTitle: '2+ more ...',
                      circle: Color(0xff10C0F8)),
                  CategoryCard(
                      containerColor: Color(0xffFFF500),
                      borderColor: Color(0xffFFF500),
                      mainTitle: "Chicken & \nBeef",
                      subTitle: '10+ more ...',
                      circle: Color(0xffFF9900)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(
                      containerColor: Color(0xffFF3D00),
                      borderColor: Color(0xffFF3D00),
                      mainTitle: 'Vegetables & \n Fruits',
                      subTitle: '20+ more ...',
                      circle: Color(0xffE56C6C)),
                  CategoryCard(
                      containerColor: Color(0xffCC00FF),
                      borderColor: Color(0xffCC00FF),
                      mainTitle: 'Transport & \nVehicles',
                      subTitle: '35+ more ...',
                      circle: Color(0xffDB00FF)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Selected Items",
                  style: TextStyle(
                      color: Color(0xff3B3636),
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 380,
                decoration: BoxDecoration(
                    color: const Color(0xffE0DCD6).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(color: const Color(0xffE0DCD6), width: 3)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Vegetables",
                          style: TextStyle(
                              color: Color(0xff3B3636),
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10,
                      ),
                      const RowDetails(
                          number: 1,
                          discription:
                              "Vegetables are parts of plants that are \n consumed by humans..."),
                      const SizedBox(
                        height: 10,
                      ),
                      const RowDetails(
                          number: 2,
                          discription:
                              "Vegetables are parts of plants that are \n consumed by humans..."),
                      const SizedBox(
                        height: 10,
                      ),
                      const RowDetails(
                          number: 3,
                          discription:
                              "Vegetables are parts of plants that are \n consumed by humans..."),
                      const SizedBox(
                        height: 10,
                      ),
                      const RowDetails(
                          number: 4,
                          discription:
                              "Vegetables are parts of plants that are \n consumed by humans..."),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xffCACACA).withOpacity(0.3),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            StarIcon(
                              starColor: Color(0xffFFE500),
                            ),
                            StarIcon(
                              starColor: Color(0xffFFE500),
                            ),
                            StarIcon(
                              starColor: Color(0xffFFE500),
                            ),
                            StarIcon(
                              starColor: Color(0xffFFE500),
                            ),
                            StarIcon(
                              starColor: Color(0xff3B3636),
                            ),
                          ],
                        ),
                      )
                    ],
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
