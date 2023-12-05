import 'package:flutter/material.dart';

class Detailpage extends StatelessWidget {
  const Detailpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Container(
        child:
            Hero(tag: "herotag", child: Image.asset("lib/assets/iphone15.jpg")),
      ),
    );
  }
}
