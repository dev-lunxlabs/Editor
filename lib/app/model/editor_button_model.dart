import 'package:flutter/material.dart';

import '../modules/editor/controllers/editor_enum.dart';

class EditorButtonModel {
  const EditorButtonModel({
    this.operation,
    required this.icon,
    required this.text,
  });
  final Operation? operation;
  final IconData icon;
  final String text;
}

class ListEditButton {
  static List<EditorButtonModel> listButton = const [
    EditorButtonModel(
      icon: Icons.movie_filter_outlined,
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
    EditorButtonModel(
      icon: Icons.design_services_outlined,
      text: 'More',
    ),
  ];
}
