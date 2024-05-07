import 'package:flutter/material.dart';
import 'package:grocery_app/pages/catogery_page/catagory.dart';
import 'package:grocery_app/pages/homepage.dart';
import 'package:grocery_app/pages/productdetails_page/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter grocery app",
      home: PruductDetails(),
    );
  }
}
