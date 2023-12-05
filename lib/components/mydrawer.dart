import 'package:ecommerce_app/components/my_listtile.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/intropage.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  RxBool themechange = false.obs;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                  child: Icon(
                Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              )),
              MylistTile(
                  icon: Icons.featured_play_list,
                  text: "Feautred Products",
                  onTap: () {
                    Get.toNamed("/featuredpage");
                  }),
              MylistTile(
                  icon: Icons.home,
                  text: "Shop",
                  onTap: () {
                    Get.back();
                  }),
              MylistTile(
                  icon: Icons.shopping_cart,
                  text: "Cart",
                  onTap: () {
                    Get.to(Cartpage());
                  }),
              MylistTile(
                icon: Icons.brightness_5,
                text: "App Theme",
                onTap: () {
                  Get.bottomSheet(Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Theme.of(context).colorScheme.background),
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width * .8,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Theme Mode",
                            style: TextStyle(fontSize: 25),
                          ),
                          Obx(() {
                            return IconButton(
                              onPressed: () {
                                themechange.value = !themechange.value;
                                if (themechange.value == true) {
                                  Get.changeTheme(ThemeData.dark().copyWith(
                                    colorScheme: ColorScheme.dark(
                                      background: Colors.grey.shade900,
                                      primary: Colors.grey.shade800,
                                      secondary: Colors.grey.shade700,
                                      onPrimary: Colors.white,
                                      inversePrimary: const Color.fromARGB(
                                          255, 255, 241, 241),
                                    ),
                                  ));
                                } else if (themechange.value == false) {
                                  Get.changeTheme(ThemeData.light().copyWith(
                                      colorScheme: ColorScheme.light(
                                    background: Colors.grey.shade300,
                                    primary: Colors.grey.shade200,
                                    secondary: Colors.white,
                                    inversePrimary: Colors.grey.shade700,
                                  )));
                                }
                              },
                              icon: Icon(themechange.value
                                  ? Icons.dark_mode
                                  : Icons.light_mode),
                              iconSize: 30,
                            );
                          })
                        ],
                      ),
                    ),
                  ));
                },
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: MylistTile(
                icon: Icons.logout,
                text: "Exit",
                onTap: () {
                  Get.to(const Intropage());
                }),
          ),
        ],
      ),
    );
  }
}
