import 'package:get/get.dart';

import '../controllers/audio_controller.dart';

class AudioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AudioController>(
      () => AudioController(),
    );
  }
}
