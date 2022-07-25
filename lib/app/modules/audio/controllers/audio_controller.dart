import 'package:editor/app/model/audio_model.dart';
import 'package:get/get.dart';

import '../../../model/editor_button_model.dart';

class AudioController extends GetxController {
  late final List<EditorButtonModel> listButton;

  @override
  void onInit() {
    super.onInit();
    listButton = AudioModel.listButton;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
