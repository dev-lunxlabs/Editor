import 'package:editor/app/core/enums/audio_feature.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void callAudioFeature(AudioFeature audioFeature){
  switch(audioFeature){
    case AudioFeature.music:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('music')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case AudioFeature.sound:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('sound')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case AudioFeature.record:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('record')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case AudioFeature.extract:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('extract')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
  }
}