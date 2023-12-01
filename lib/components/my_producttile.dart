import 'package:ecommerce_app/models/products.dart';
import 'package:ecommerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Myproducttile extends StatelessWidget {
  Products product;
  Myproducttile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Shop getcontroller = Get.find();
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(28),
          boxShadow: const [BoxShadow(blurRadius: 10, offset: Offset(5, 3))]),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.all(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height * .1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: const Icon(Icons.favorite)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                product.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                product.description,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(product.price.toString()),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Theme.of(context).colorScheme.secondary),
                  child: IconButton(
                      onPressed: () {
                        getcontroller.addToCart(product);
                        print(getcontroller.cart);
                      },
                      icon: const Icon(Icons.add)))
            ],
          )
        ],
      ),
    );
  }
}
