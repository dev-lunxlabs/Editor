import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/crop_controller.dart';

class CropView extends GetView<CropController> {
  const CropView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CropView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CropView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
