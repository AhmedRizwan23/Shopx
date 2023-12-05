import 'package:ecommerce_app/models/products.dart';
import 'package:ecommerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class Cartpage extends StatelessWidget {
  Cartpage({
    super.key,
  });

  final Shop getcontroller = Get.find();

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
          Expanded(
            child: Obx(() {
              if (getcontroller.cart.isEmpty) {
                return Center(child: Lottie.asset("lib/assets/emptycart.json"));
              }

              return ListView.builder(
                shrinkWrap: true,
                itemCount: getcontroller.cart.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(getcontroller.cart[index].name),
                    subtitle: Text(
                      'Price: ${(getcontroller.cart[index].price)}',
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        getcontroller.removeFromCart(getcontroller.cart[index]);
                      },
                      icon: const Icon(Icons.remove_circle_outline),
                    ),
                  );
                },
              );
            }),
          ),
          Obx(
            () => buildTotalOrderButton(),
          )
        ],
      ),
    );
  }

  Widget buildTotalOrderButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        child: ElevatedButton(
          onPressed: () {
            // Add logic for what happens when the "Place Order" button is pressed
            // For example, navigate to a confirmation page
          },
          child: Text(
            'Place Order - Total: ${formatTotal()}',
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  double formatTotal() {
    final double total =
        getcontroller.cart.fold(0, (sum, item) => sum + item.price);
    return total;
  }
}
