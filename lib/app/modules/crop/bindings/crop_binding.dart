import 'package:get/get.dart';

import '../controllers/crop_controller.dart';

class CropBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CropController>(
      () => CropController(),
    );
  }
}
