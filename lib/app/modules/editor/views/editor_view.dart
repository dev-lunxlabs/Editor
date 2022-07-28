import 'package:editor/app/modules/editor/views/player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../../../core/enums/button_type.dart';

import '../../../core/enums/feature.dart';
import '../controllers/editor_controller.dart';
import 'console.dart';

class EditorView extends GetView<EditorController> {
  const EditorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            controller.callFeature(
              feature: Feature.none,
              buttonType: ButtonType.feature,
            );
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minHeight: 100,
                  maxHeight: 600,
                ),
                child: Player(controller: controller),
              ),
              Console(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}
