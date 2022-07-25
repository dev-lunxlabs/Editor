import 'package:editor/app/model/filter_model.dart';
import 'package:get/get.dart';

import '../../../model/editor_button_model.dart';

class FilterController extends GetxController {
  late final List<EditorButtonModel> listButton;

  @override
  void onInit() {
    super.onInit();
    listButton = FilterModel.listButton;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
