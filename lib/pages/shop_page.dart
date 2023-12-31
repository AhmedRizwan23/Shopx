import 'package:ecommerce_app/components/my_producttile.dart';
import 'package:ecommerce_app/components/mydrawer.dart';
import 'package:ecommerce_app/models/products.dart';
import 'package:ecommerce_app/models/shop_getxcontroller.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

Shop getshopcontroller = Get.put(Shop());

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});
  Future refresh() async {
    print("refresh");
    getshopcontroller.shop.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Shop Page'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(Cartpage());
                },
                icon: const Icon(Icons.shopping_bag_outlined)),
          ]),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          Obx(
            () => SizedBox(
              height: 620,
              child: LiquidPullToRefresh(
                showChildOpacityTransition: false,
                onRefresh: refresh,
                child: ListView.builder(
                  //  scrollDirection: Axis.horizontal,
                  itemCount: getshopcontroller.shop.length,
                  itemBuilder: (BuildContext context, int index) {
                    Products prod = getshopcontroller.shop[index];

                    return GestureDetector(
                        onTap: () {
                          print("tapped");
                        },
                        child: Myproducttile(product: prod));
                  },
                ),
              ),
            ),
          ),
          Text(
            "minimal X shop",
            style: GoogleFonts.dmSerifDisplay(
                fontSize: 20,
                color: Theme.of(context).colorScheme.inversePrimary),
          )
        ],
      ),
    );
  }
}
