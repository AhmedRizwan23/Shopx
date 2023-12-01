import 'package:ecommerce_app/models/products.dart';
import 'package:get/get.dart';

class Shop extends GetxController {
  // Shop products
  final RxList<Products> shop = [
    Products(
      name: "Product 1",
      price: 20.5,
      description: "Item description",
    ),
    Products(
      name: "Product 2",
      price: 203.5,
      description: "Item description",
    ),
    Products(
      name: "Product 3",
      price: 2220.5,
      description: "Item description",
    ),
    Products(
      name: "Product 4",
      price: 10.5,
      description: "Item description",
    ),
  ].obs;
  //user cart
  final RxList cart = [].obs;

  //add item to cart
  void addToCart(Products item) {
    cart.add(item);
    update();
  }

//remove item fro cart
  void removeFromCart(Products item) {
    cart.remove(item);
    update();
  }
}
