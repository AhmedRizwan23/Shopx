import 'package:ecommerce_app/models/products.dart';
import 'package:ecommerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cartpage extends StatelessWidget {
  Cartpage({super.key});

  Shop getcontroller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Cart'),
        ),
        body: Column(
          children: [
            Obx(() {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: getcontroller.cart.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(getcontroller.cart[index].name),
                    subtitle: Text(getcontroller.cart[index].price.toString()),
                    trailing: IconButton(
                        onPressed: () {
                          getcontroller
                              .removeFromCart(getcontroller.cart[index]);
                        },
                        icon: const Icon(Icons.remove_circle_outline)),
                  );
                },
              );
            })
          ],
        ));
  }
}
