import 'package:flutter/material.dart';
import '../core/enums/audio_feature.dart';
import '../model/editor_button_model.dart';

class AudioData {
  const AudioData._();

  static const List<EditorButtonModel> listButton = [
    EditorButtonModel(
      audioFeature: AudioFeature.music,
      icon: Icons.music_note_outlined,
      text: 'music',

    ),
    EditorButtonModel(
      icon: Icons.volume_up,
      text: 'Sound',
      audioFeature: AudioFeature.sound,
    ),
    EditorButtonModel(
      icon: Icons.mic,
      text: 'Record',
      audioFeature: AudioFeature.record,
    ),
  ];
}
