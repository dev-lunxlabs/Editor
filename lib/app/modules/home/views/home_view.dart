import 'package:editor/app/functions/pick_media.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
              pickVideo().then((videoPath) {
                Get.toNamed(
                  Routes.EDITOR,
                  arguments: [videoPath],
                );
              });
            },
            child: const Text("pick media"),
          ),
        ),
      ),
    );
  }
}
