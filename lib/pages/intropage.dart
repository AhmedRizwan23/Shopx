import 'package:ecommerce_app/pages/signin.dart';
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
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blueGrey[500],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Mycustombutton(
                    color: Theme.of(context).colorScheme.primary,
                    onTap: () {
                      Get.to(const SignInPage());
                    },
                    child: const Text("Sign in")),
                Mycustombutton(
                    color: Theme.of(context).colorScheme.primary,
                    onTap: () {},
                    child: const Text("Sign up")),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
