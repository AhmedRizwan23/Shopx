import 'package:ecommerce_app/pages/intropage.dart';
import 'package:ecommerce_app/themes/lightmode.dart';
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
      home: const Intropage(),
    );
  }
}
