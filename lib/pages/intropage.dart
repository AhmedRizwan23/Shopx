import 'package:chewie/chewie.dart';
import 'package:ecommerce_app/components/mybutton.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
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
        //   controlsSafeAreaMinimum: const EdgeInsets.symmetric(vertical: 20),
        showControls: false,
        aspectRatio: 18 / 16);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.width,
              //   color: Colors.grey.shade700,
              child: Chewie(controller: chewieController)),
        ),
        // Image(
        //   image: const AssetImage("lib/assets/applelogo.png"),
        //   height: MediaQuery.of(context).size.height * .5,
        //   width: MediaQuery.of(context).size.width * .5,
        // ),

        const Text(
          "Minimal Shop",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Premium Quality Products",
          style: TextStyle(color: Colors.grey.shade900),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Mycustombutton(
              onTap: () {
                videoPlayerController.dispose();
                chewieController.dispose();
                Get.to(const ShopPage());
              },
              child: const Icon(
                Icons.arrow_forward,
                size: 35,
              )),
        )
      ]),
    );
  }
}
