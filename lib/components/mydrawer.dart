import 'package:ecommerce_app/components/my_listtile.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/intropage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                  child: Icon(
                Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              )),
              MylistTile(
                  icon: Icons.home,
                  text: "Shop",
                  onTap: () {
                    Get.back();
                  }),
              MylistTile(
                  icon: Icons.shopping_cart,
                  text: "Cart",
                  onTap: () {
                    Get.to(const Cartpage());
                  }),
              Mykist
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: MylistTile(
                icon: Icons.logout,
                text: "Exit",
                onTap: () {
                  Get.to(const Intropage());
                }),
          ),
        ],
      ),
    );
  }
}
