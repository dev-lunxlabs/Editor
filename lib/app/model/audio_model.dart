import 'package:flutter/material.dart';

import 'editor_button_model.dart';

class AudioModel {
  AudioModel._();

  static List<EditorButtonModel> listButton = [
    EditorButtonModel(icon: Icons.music_note_outlined, text: 'music'),
    EditorButtonModel(icon: Icons.volume_up, text: 'Sound'),
    EditorButtonModel(icon: Icons.graphic_eq, text: 'Effects'),
    EditorButtonModel(icon: Icons.mic, text: 'Record'),
  ];
}
