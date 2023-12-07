import 'dart:convert';

import 'package:ecommerce_app/models/shop_getxcontroller.dart';
import 'package:ecommerce_app/models/sign_getxconroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import "package:http/http.dart" as http;

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Signincontroller getsigncontroller = Get.put(Signincontroller());

  Future loginuser(String email, String password) async {
    getsigncontroller.isloading.value = true;
    final response = await http.post(
      Uri.parse("https://reqres.in/api/login"),
      body: {
        "email": email,
        "password": password,
      },
    );
    if (response.statusCode == 200) {
      // Successful login, handle the response accordingly
      print('Login successful');
      print('response: ${response.body}');

      // Get.toNamed("/shoppage");
      Get.snackbar(
        "Login Successful",
        "Happy Shopping",
        titleText: SizedBox(
          height: 100,
          child: Lottie.asset("lib/assets/user.json"),
        ),
        messageText: const Text(
          "Login Succesfull",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        snackPosition: SnackPosition.BOTTOM,
        snackStyle: SnackStyle.FLOATING,
        borderColor: Colors.black,
        borderWidth: 2,
        backgroundColor:
            Colors.green.shade700, // Customize the background color
      );
    } else {
      // Handle login failure
      print('Login failed');
      print('Error code: ${response.statusCode}');
      print('Error message: ${response.body}');
      Get.snackbar("Login Failed", " ${jsonDecode(response.body)['error']}",
          backgroundColor: Colors.red.shade700,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM);
    }
    getsigncontroller.isloading.value = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset("lib/assets/hello.json"),
              TextFormField(
                controller: getsigncontroller.emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: const Icon(Icons.email),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Obx(
                () => TextFormField(
                  controller: getsigncontroller.passwordController,
                  obscureText: getsigncontroller.obscurepass.value,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        getsigncontroller.obscurepass.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        getsigncontroller.obscurepass.value =
                            !getsigncontroller.obscurepass.value;
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Obx(
                () => getsigncontroller.isloading.value
                    ? Lottie.asset("lib/assets/acess.json")
                    : ElevatedButton(
                        onPressed: () {
                          var email = getsigncontroller.emailController.text
                              .trim()
                              .toString();
                          var password = getsigncontroller
                              .passwordController.text
                              .trim()
                              .toString();
                          loginuser(email, password);
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),
                        ),
                      ),
              ),
              TextButton(
                onPressed: () {
                  Get.snackbar("Login Succesfull", "Happy Shopping!",
                      snackPosition: SnackPosition.BOTTOM);
                  Get.toNamed("/shoppage");
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
