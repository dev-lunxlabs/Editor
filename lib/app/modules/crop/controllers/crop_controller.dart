import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CropController extends GetxController {
  // Rx<Rect> rect = Rect.zero.obs;
  // TransformData transformData

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void updateRectangle() {}
}

enum Boundary {
  none,
  top,
  left,
  bottom,
  right,
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}
