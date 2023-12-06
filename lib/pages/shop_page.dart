import 'package:ecommerce_app/components/my_producttile.dart';
import 'package:ecommerce_app/components/mydrawer.dart';
import 'package:ecommerce_app/models/products.dart';
import 'package:ecommerce_app/models/shop_getxcontroller.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});
  Future refresh() async {
    print("refresh");
  }

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
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(Cartpage());
                },
                icon: const Icon(Icons.shop)),
          ]),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          const Row(
            children: [Text("Black Friday sale live")],
          ),
          Obx(
            () => SizedBox(
              height: 700,
              child: LiquidPullToRefresh(
                showChildOpacityTransition: false,
                onRefresh: refresh,
                child: ListView.builder(
                  //  scrollDirection: Axis.horizontal,
                  itemCount: getshopcontroller.shop.length,
                  itemBuilder: (BuildContext context, int index) {
                    Products prod = getshopcontroller.shop[index];

                    return Myproducttile(product: prod);
                  },
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "minimal X shop",
                style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.inversePrimary),
              )
            ],
          )
        ],
      ),
    );
  }
}
