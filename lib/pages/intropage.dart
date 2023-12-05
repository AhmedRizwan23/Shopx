import 'package:lottie/lottie.dart';

import '../components/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Lottie.asset(
          "lib/assets/logo.json",
          // height: MediaQuery.of(context).size.height * .5,
          // width: MediaQuery.of(context).size.width * .8,
        ),
        const Text(
          "Minimal Shop",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Premium Quality Products",
          style: TextStyle(color: Colors.grey.shade900, fontSize: 20),
        ),
        const SizedBox(height: 100),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Mycustombutton(
              onTap: () {
                Get.offAllNamed("/shoppage");
              },
              child: const Icon(
                Icons.arrow_forward,
                size: 50,
              )),
        )
      ]),
    );
  }
}
