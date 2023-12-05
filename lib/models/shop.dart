import 'package:ecommerce_app/models/products.dart';
import 'package:get/get.dart';

class Shop extends GetxController {
  // Shop products
  final RxList<Products> shop = <Products>[
    Products(
        name: "iphone 15 pro",
        price: 800,
        description:
            "Apple's latest flagship smartphone, combining cutting-edge technology with sleek design. Featuring a stunning Super Retina XDR display, the device offers vibrant colors and sharp clarity. The advanced A16 Bionic chip powers seamless performance, supporting innovative features and lightning-fast processing. Capture breathtaking moments with the enhanced camera system.",
        imagepath: "lib/assets/iphone15.jpg"),
    Products(
      name: "iphone SE ",
      price: 350,
      description:
          " The iPhone SE is a compact yet powerful smartphone designed by Apple. It combines the classic design of the iPhone with modern technology. The device features a 4.7-inch Retina HD display, equipped with the A13 Bionic chip for fast and efficient performance.",
      imagepath: 'lib/assets/iphone.jpg',
    ),
    Products(
      name: "AirPods Max",
      price: 400,
      description:
          " AirPods Max is Apple's premium over-ear headphones, blending high-quality audio with advanced technology. These headphones boast a sleek design with a breathable knit mesh canopy and memory foam ear cushions for comfort during extended use.",
      imagepath: 'lib/assets/airpods.jpg',
    ),
    Products(
      name: "iPad Pro",
      price: 600,
      description:
          "The iPad Pro is a powerful and versatile tablet designed by Apple, catering to users who seek high-performance computing in a portable form",
      imagepath: 'lib/assets/ipad.jpg',
    ),
    Products(
      name: "Apple Watch 9",
      price: 350,
      description:
          "The Apple Watch comes in various models, including the Apple Watch SE and the Apple Watch Series 7. It boasts a sleek design with a customizable watch face, allowing users to personalize their device according to their preferences.",
      imagepath: 'lib/assets/watch.jpg',
    ),
  ].obs;
  //user cart
  final RxList<Products> cart = <Products>[].obs;

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
