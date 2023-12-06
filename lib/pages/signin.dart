import 'package:ecommerce_app/models/shop_getxcontroller.dart';
import 'package:ecommerce_app/models/sign_getxconroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Signincontroller getsigncontroller = Get.put(Signincontroller());
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
              Lottie.asset("lib/assets/login.json"),
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
              ElevatedButton(
                onPressed: () {
                  Get.snackbar("Login Succesfull", "Happy Shopping!",
                      snackPosition: SnackPosition.BOTTOM);
                  Get.toNamed("/shoppage");
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
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
