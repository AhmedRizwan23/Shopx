import 'package:ecommerce_app/firebase_options.dart';
import 'package:ecommerce_app/pages/feautred_productpage.dart';
import 'package:ecommerce_app/pages/intropage.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:ecommerce_app/themes/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightmode,
      darkTheme: darkmode,
      home: const Intropage(),
      getPages: [
        GetPage(name: '/', page: () => const Intropage()),
        GetPage(name: '/shoppage', page: () => const ShopPage()),
        GetPage(name: '/featuredpage', page: () => const Feautredpage()),

        // Add more routes as needed
      ],
    );
  }
}
