import 'package:editor/app/core/enums/element_feature.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void callElementFeature(ElementFeature elementFeature) {
  switch (elementFeature) {
    case ElementFeature.brush:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('brush')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case ElementFeature.stickers:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('stickers')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case ElementFeature.image:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('image')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case ElementFeature.video:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('video')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case ElementFeature.border:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('border')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case ElementFeature.watermark:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('watermark')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case ElementFeature.background:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('background')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
  }
}
