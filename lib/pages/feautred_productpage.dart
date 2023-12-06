import 'package:chewie/chewie.dart';
import 'package:ecommerce_app/components/mybutton.dart';
import 'package:ecommerce_app/models/products.dart';
import 'package:ecommerce_app/models/shop_getxcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class Feautredpage extends StatefulWidget {
  const Feautredpage({super.key});

  @override
  State<Feautredpage> createState() => _IntropageState();
}

class _IntropageState extends State<Feautredpage> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    videoPlayerController =
        VideoPlayerController.asset("lib/assets/introvideo.mp4");
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        autoPlay: true,
        looping: true,
        allowMuting: true,
        allowFullScreen: true,
        //   controlsSafeAreaMinimum: const EdgeInsets.symmetric(vertical: 20),

        aspectRatio: 21 / 10);
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
    chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Shop getcontroller = Get.find();
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.grey[100],
      body: Column(children: [
        Expanded(
          child: ListView(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * .4,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.grey.shade700,
                  child: Chewie(controller: chewieController)),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "iphone 15 pro",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  " Apple's latest flagship smartphone, combining cutting-edge technology with sleek design. Featuring a stunning Super Retina XDR display, the device offers vibrant colors and sharp clarity. The advanced A16 Bionic chip powers seamless performance, supporting innovative features and lightning-fast processing. Capture breathtaking moments with the enhanced camera system, equipped with AI-driven capabilities for stunning photos and videos",
                  style: TextStyle(color: Colors.grey.shade900),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.background,
                ),
                height: MediaQuery.of(context).size.height * .1,
                child: InkWell(
                  onTap: () {
                    Products products = getcontroller.shop[0];

                    getcontroller.addToCart(products);
                    Get.snackbar("Added to cart", products.name);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("Add to cart"),
                      Text("\$${getcontroller.shop[0].price.toString()}")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
