import 'package:editor/app/modules/editor/controllers/editor_controller.dart';
import 'package:get/get.dart';

import '../controllers/timeline_controller.dart';

class TimelineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditorController>(
      () => EditorController(),

    );
  }
}
