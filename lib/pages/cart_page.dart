import 'package:ecommerce_app/models/products.dart';
import 'package:ecommerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    Shop getcontroller = Get.find();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Cart'),
        ),
        body: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: getcontroller.cart.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(getcontroller.cart[index].name),
                  subtitle: Text(getcontroller.cart[index].price.toString()),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_circle_outline)),
                );
              },
            ),
          ],
        ));
  }
}
