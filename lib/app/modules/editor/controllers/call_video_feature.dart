import 'package:editor/app/core/enums/video_feature.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void callVideoFeature(VideoFeature videoFeature) {
  switch (videoFeature) {
    case VideoFeature.trim:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('trim')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case VideoFeature.crop:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('crop')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case VideoFeature.concatenate:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('concatenate')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case VideoFeature.split:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('split')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case VideoFeature.cover:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('cover')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case VideoFeature.speed:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('speed')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case VideoFeature.add:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('add')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case VideoFeature.flipX:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('flipX')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case VideoFeature.flipY:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('flipY')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case VideoFeature.aspectRatio:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('aspectRatio')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case VideoFeature.transition:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('transition')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case VideoFeature.text:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('text')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case VideoFeature.caption:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('caption')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case VideoFeature.autoCaption:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('autoCaption')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case VideoFeature.rotate:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('rotate')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
  }
}
