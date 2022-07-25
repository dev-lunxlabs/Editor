import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../../../model/editor_button_model.dart';
import 'package:flutter/material.dart';

import 'editor_enum.dart';
import 'list_button_value.dart';

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
  late List<VideoPlayerController> listVPC;
  late List<String> videoPath;

  //  Bottom Button Bar
  List<EditorButtonModel> listButton = <EditorButtonModel>[].obs;
  RxBool showButtonBar = true.obs;
  RxBool showPrimaryBtn = false.obs;
  //RxInt buttonIndex = 0.obs;

  //  Trim
  //  $ ffmpeg -i input.mp4 -ss 00:05:10 -to 00:15:30 -c:v copy -c:a copy output2.mp4
  RxDouble trimStart = 0.0.obs;
  RxDouble trimEnd = 0.0.obs;

  //  Crop
  //  crop=W:H:X:Y
  Rx<Offset> cropCoordinates = const Offset(0, 0).obs;
  RxDouble cropWidth = 0.0.obs;
  RxDouble cropHeight = 0.0.obs;

  Boundary boundary = Boundary.none;
  Rx<Rect> rect = Rect.zero.obs;
  double? aspectRatio = vRatio['custom'];

  //  Rect
  //  Transform
  //  Size

  //  Concatenate

  //  Split

  // Aspect Ratio

  @override
  void onInit() {
    //videoPath = Get.arguments[0];

    listButton = ListEditButton.listButton;
    // videoPlayerController = VideoPlayerController.file(File(videoPath));
    // videoPlayerController.initialize();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    showLayerController.dispose();
  }

  void selectBottomList(int index) {
    showPrimaryBtn.value = index == 0 ? true : false;
    listButton = listButtonValue[index];
  }

  void showLayer() {
    showButtonBar.value = !showButtonBar.value;
    showButtonBar.isTrue
        ? showLayerController.reverse()
        : showLayerController.forward();
  }

  void crop() {}

  void trim() {}

  void split() {}

  void concatenate() {}

  void exeOperation() {}
}

// switch (index) {
//   case 0:
//     {
//       listButton = ListEditButton.listButton;
//     }
//     break;
//   case 1:
//     {
//       listButton = VideoModel.listButton;
//     }
//     break;
//   case 2:
//     {
//       listButton = AudioModel.listButton;
//     }
//     break;
//   case 3:
//     {
//       listButton = ElementModel.listButton;
//     }
//     break;
//   case 4:
//     {
//       listButton = FilterModel.listButton;
//     }
//     break;
//   default:
//     {
//       listButton = ListEditButton.listButton;
//     }
//     break;
// }
