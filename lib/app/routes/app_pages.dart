import 'package:get/get.dart';

import '../modules/audio/bindings/audio_binding.dart';
import '../modules/audio/views/audio_view.dart';
import '../modules/crop/bindings/crop_binding.dart';
import '../modules/crop/views/crop_view.dart';
import '../modules/editor/bindings/editor_binding.dart';
import '../modules/editor/controllers/editor_controller.dart';
import '../modules/editor/views/editor_view.dart';
import '../modules/element/bindings/element_binding.dart';
import '../modules/element/views/element_view.dart';
import '../modules/filter/bindings/filter_binding.dart';
import '../modules/filter/views/filter_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/more/bindings/more_binding.dart';
import '../modules/more/views/more_view.dart';
import '../modules/timeline/bindings/timeline_binding.dart';
import '../modules/timeline/views/timeline_view.dart';
import '../modules/video/bindings/video_binding.dart';
import '../modules/video/views/video_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.EDITOR,
      page: () => EditorView(),
      binding: EditorBinding(),
    ),
    GetPage(
      name: _Paths.TIMELINE,
      page: () => TimelineView(editorController: EditorController()),
      binding: TimelineBinding(),
    ),
    GetPage(
      name: _Paths.AUDIO,
      page: () => AudioView(),
      binding: AudioBinding(),
    ),
    GetPage(
      name: _Paths.FILTER,
      page: () => FilterView(),
      binding: FilterBinding(),
    ),


    GetPage(
      name: _Paths.VIDEO,
      page: () => VideoView(),
      binding: VideoBinding(),
    ),
    GetPage(
      name: _Paths.ELEMENT,
      page: () => ElementView(),
      binding: ElementBinding(),
    ),
    GetPage(
      name: _Paths.MORE,
      page: () => MoreView(),
      binding: MoreBinding(),
    ),
    GetPage(
      name: _Paths.CROP,
      page: () => CropView(),
      binding: CropBinding(),
    ),
  ];
}
