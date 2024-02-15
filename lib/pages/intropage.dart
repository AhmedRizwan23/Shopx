import 'package:ecommerce_app/pages/signin.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../components/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});
  //ahmed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Minimal Shop",
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 50,
                  color: Colors.brown
                      .shade400), //TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            const SizedBox(height: 5),
            const Text(
              "Premium Quality Products",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 200),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(width: 1, color: Colors.black),
                          color: const Color.fromARGB(255, 184, 71, 205)),
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            Get.to(const SignInPage());
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "or",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // const SizedBox(width: 115),
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
            Expanded(
              child: Container(
                //  margin: const EdgeInsets.only(bottom: 30),
                // height: 330,
                // color: Colors.amber,
                child: Lottie.asset(
                  "lib/assets/logo.json",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
