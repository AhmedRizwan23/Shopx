import 'package:ecommerce_app/models/products.dart';
import 'package:flutter/material.dart';

class Myproducttile extends StatelessWidget {
  Products product;
  Myproducttile({super.key, required this.product});

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
        children: [
          const Icon(Icons.favorite),
          Text(product.name),
          Text(product.description),
          Text(product.price.toString())
        ],
      ),
    );
  }
}
