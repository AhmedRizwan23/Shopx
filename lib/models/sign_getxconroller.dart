import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signincontroller extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  RxBool obscurepass = true.obs;

  RxBool isloading = false.obs;
}
