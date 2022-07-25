import 'package:editor/app/model/video_model.dart';
import 'package:get/get.dart';

import '../../../model/editor_button_model.dart';

class VideoController extends GetxController {
  late final List<EditorButtonModel> listButton;

  @override
  void onInit() {
    super.onInit();
    listButton = VideoModel.listButton;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
