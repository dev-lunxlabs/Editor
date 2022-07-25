import 'package:flutter/material.dart';
import '../core/enums/feature_enum.dart';
import '../model/editor_button_model.dart';

class AudioData {
  const AudioData._();

  static const List<EditorButtonModel> listButton = [
    EditorButtonModel(
      icon: Icons.music_note_outlined,
      text: 'music',
      feature: Feature.music,
    ),
    EditorButtonModel(
      icon: Icons.volume_up,
      text: 'Sound',
      feature: Feature.sound,
    ),
    EditorButtonModel(
      icon: Icons.mic,
      text: 'Record',
      feature: Feature.record,
    ),
  ];
}
