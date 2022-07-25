import 'package:flutter/material.dart';
import '../model/editor_button_model.dart';

class ListEditorButton {
  const ListEditorButton._();
  static const List<EditorButtonModel> listButton = [
    EditorButtonModel(
      icon: Icons.design_services_outlined,
      text: 'Edit',
    ),
    EditorButtonModel(
      icon: Icons.music_note_outlined,
      text: 'Audio',
    ),
    EditorButtonModel(
      icon: Icons.interests_outlined,
      text: 'Elements',
    ),
    EditorButtonModel(
      icon: Icons.palette_outlined,
      text: 'Filters',
    ),
  ];
}