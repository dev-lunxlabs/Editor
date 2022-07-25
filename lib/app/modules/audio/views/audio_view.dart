import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/editor_button.dart';
import '../controllers/audio_controller.dart';

class AudioView extends GetView<AudioController> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.listButton.length,

        itemBuilder: (_, index) {
          return EditorButton(
            icon: controller.listButton[index].icon,
            text: controller.listButton[index].text,
          );
        },
      ),
    );
  }
}
