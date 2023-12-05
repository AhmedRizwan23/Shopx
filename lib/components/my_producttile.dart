import 'package:ecommerce_app/models/products.dart';
import 'package:ecommerce_app/models/shop.dart';
import 'package:ecommerce_app/pages/detailpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Myproducttile extends StatelessWidget {
  Products product;
  Myproducttile({super.key, required this.product});
  void confirmOrder(BuildContext context) {
    Get.bottomSheet(Container(
      height: MediaQuery.of(context).size.height * .3,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(30),
            child: Text("Add this item to your cart?"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Cancel"),
              ),
              MaterialButton(
                onPressed: () {
                  getcontroller.addToCart(product);
                  Get.back();
                  print(getcontroller.cart);
                  Get.snackbar("Product added to cart", product.name,
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Theme.of(context).colorScheme.primary);
                },
                child: const Text("Yes"),
              ),
            ],
          )
        ],
      ),
    ));
  }

  Shop getcontroller = Get.find();

  @override
  Widget build(BuildContext context) {
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
                    //   width: MediaQuery.of(context).size.width,
                    //  height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: Image.asset(
                      product.imagepath,
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                product.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
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
              Text(
                "\$ ${product.price.toString()}",
                style: const TextStyle(fontSize: 20),
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Theme.of(context).colorScheme.secondary),
                  child: IconButton(
                      onPressed: () {
                        confirmOrder(context);
                      },
                      icon: const Icon(Icons.add)))
            ],
          )
        ],
      ),
    );
  }

  //void confirmOrder() {}

//   void confirmOrder() {}
// }

// void confirmOrder() {
// }
}
