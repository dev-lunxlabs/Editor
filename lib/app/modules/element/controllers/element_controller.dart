import 'package:editor/app/model/element_model.dart';
import 'package:get/get.dart';

import '../../../model/editor_button_model.dart';

class ElementController extends GetxController {
  late final List<EditorButtonModel> listButton;

  @override
  void onInit() {
    super.onInit();
    listButton = ElementModel.listButton;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
