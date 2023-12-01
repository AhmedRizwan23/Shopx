import 'package:ecommerce_app/components/my_producttile.dart';
import 'package:ecommerce_app/components/mydrawer.dart';
import 'package:ecommerce_app/models/products.dart';
import 'package:ecommerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    Shop getshopcontroller = Get.put(Shop());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Shop Page'),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: Obx(
        () => SizedBox(
          height: 600,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: getshopcontroller.shop.length,
            itemBuilder: (BuildContext context, int index) {
              Products prod = getshopcontroller.shop[index];

              return Myproducttile(product: prod);
            },
          ),
        ),
      ),
    );
  }
}
