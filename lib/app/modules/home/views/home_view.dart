import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../functions/pick_media.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Media'),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 60,
          width: 200,
          child: ElevatedButton(
            onPressed: () {
              pickVideos().then((value) {
                Get.toNamed(Routes.EDITOR);
              });
            },
            child: const Text("pick media"),
          ),
        ),
      ),
    );
  }
}
