import 'package:get/get.dart';

import '../controllers/element_controller.dart';

class ElementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ElementController>(
      () => ElementController(),
    );
  }
}
