import 'package:ecommerce_app/pages/intropage.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightmode,
      darkTheme: darkmode,
      home: const Intropage(),
      getPages: [
        GetPage(name: '/', page: () => const Intropage()),
        GetPage(name: '/shoppage', page: () => const ShopPage()),
        // Add more routes as needed
      ],
    );
  }
}
