import 'dart:io';

import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../../../core/enums/aspectratio_map.dart';
import '../../../core/enums/button_type.dart';
import '../../../core/enums/feature.dart';
import '../../../core/enums/rectangle_enum.dart';
import '../../../core/enums/video_feature.dart';
import '../../../data/audio_data.dart';
import '../../../data/feature_data.dart';
import '../../../data/element_data.dart';
import '../../../data/filter_data.dart';
import '../../../data/video_data.dart';
import '../../../model/editor_button_model.dart';
import 'package:flutter/material.dart';

import '../../../model/vpc_model.dart';

class EditorController extends GetxController with GetTickerProviderStateMixin {
  //  Animation
  late final AnimationController showLayerController = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  );
  late final Animation<double> animation = CurvedAnimation(
    parent: showLayerController,
    curve: Curves.fastOutSlowIn,
  );

  //  Video Player
  // late List<VPCModel> listVPC;
  late VPCModel currentVPC;
  late List<String> listPath;
  RxInt currentVideo = 0.obs;

  //  Bottom Button Bar
  List<EditorButtonModel> listButton = <EditorButtonModel>[].obs;

  //RxInt buttonIndex = 0.obs;

  //  Trim
  //  $ ffmpeg -i input.mp4 -ss 00:05:10 -to 00:15:30 -c:v copy -c:a copy output2.mp4
  RxDouble trimStart = 0.0.obs;
  RxDouble trimEnd = 0.0.obs;

  Rx<ButtonType> cButtonType = ButtonType.feature.obs;
  Rx<Feature> cFeature = Feature.none.obs;

  //  Crop
  //  crop=W:H:X:Y
  Rx<Offset> cropCoordinates = const Offset(0, 0).obs;
  RxDouble cropWidth = 0.0.obs;
  RxDouble cropHeight = 0.0.obs;

  Rectangle rectangle = Rectangle.none;
  Rx<Rect> rect = Rect.zero.obs;
  double? aspectRatio = aRatio['custom'];

  @override
  void onInit() {
    listPath = Get.arguments[0];
    listButton = FeatureData.listButton;
    initializeVPC();
    super.onInit();
  }

  @override
  void onClose() {
    showLayerController.dispose();
  }

  void initializeVPC() {
    currentVPC = VPCModel(
      vpc: VideoPlayerController.file(File(listPath[currentVideo.value]))
        ..initialize(),
    );
  }

  void switchVPC() {
    currentVPC.vpc.addListener(() {
      currentVPC.vpc.value.duration < const Duration(milliseconds: 400);
      currentVideo.value = currentVideo.value + 1;
    });
    initializeVPC();
  }

  void callFeature({
    required Feature feature,
    required ButtonType buttonType,
  }) {
    cButtonType.value = buttonType;
    switch (feature) {
      case Feature.none:
        {
          listButton = FeatureData.listButton;
        }
        break;
      case Feature.video:
        {
          listButton = VideoData.listButton;
        }
        break;
      case Feature.audio:
        {
          listButton = AudioData.listButton;
        }
        break;
      case Feature.element:
        {
          listButton = ElementData.listButton;
        }
        break;
      case Feature.filter:
        {
          listButton = FilterData.listButton;
        }
        break;
    }
  }
}

// void switchConsole({
//   ButtonType? buttonType,
//   Feature? feature,
//   VideoFeature? videoFeature,
//   AudioFeature? audioFeature,
//   ElementFeature? elementFeature,
//   FilterFeature? filterFeature,
// }) {
//   if(buttonType != null){
//     cButtonType.value = buttonType;
//   }
//
//   if (feature != null) {
//     cFeature.value = feature;
//   }
//   switch (cButtonType.value) {
//     case ButtonType.none:
//       {
//         null;
//       }
//       break;
//     case ButtonType.layer:
//       {
//         null;
//       }
//       break;
//     case ButtonType.feature:
//       {
//         callFeature(cFeature.value);
//       }
//       break;
//     case ButtonType.videoFeature:
//       {
//         callVideoFeature(videoFeature!);
//       }
//       break;
//     case ButtonType.audioFeature:
//       {
//         callAudioFeature(audioFeature!);
//       }
//       break;
//     case ButtonType.elementFeature:
//       {
//         callElementFeature(elementFeature!);
//       }
//       break;
//     case ButtonType.filterFeature:
//       {
//         callFilterFeature(filterFeature!);
//       }
//       break;
//   }
// }
