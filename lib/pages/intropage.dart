import 'package:ecommerce_app/pages/signin.dart';
import 'package:lottie/lottie.dart';

import '../components/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Lottie.asset(
            "lib/assets/logo.json",
          ),
          const Text(
            "Minimal Shop",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
          ),
          const SizedBox(height: 10),
          const Text(
            "Premium Quality Products",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 50),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSecondary,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(100),
                  topLeft: Radius.circular(100),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(2, -3),
                    color:
                        const Color.fromARGB(166, 200, 155, 6).withOpacity(0.4),
                    blurRadius: 50,
                    spreadRadius: 30,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Mycustombutton(
                      width: 200,
                      color: Theme.of(context).colorScheme.primary,
                      onTap: () {
                        Get.to(const SignInPage());
                      },
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "or",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        const SizedBox(width: 140),
                        Image.asset(
                          "lib/assets/facebook.png",
                          height: 60,
                          width: 60,
                        ),
                        const SizedBox(width: 20),
                        Image.asset(
                          "lib/assets/google.png",
                          height: 60,
                          width: 60,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
