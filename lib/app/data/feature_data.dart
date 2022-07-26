import 'package:flutter/material.dart';
import '../core/enums/button_type.dart';
import '../core/enums/feature.dart';
import '../model/editor_button_model.dart';

class FeatureData {
  const FeatureData._();
  static const List<EditorButtonModel> listButton = [
    EditorButtonModel(
      feature: Feature.video,
      buttonType: ButtonType.videoFeature,
      icon: Icons.design_services_outlined,
      text: 'Edit',
    ),
    EditorButtonModel(
      feature: Feature.audio,
      buttonType: ButtonType.audioFeature,
      icon: Icons.music_note_outlined,
      text: 'Audio',
    ),
    EditorButtonModel(
      feature: Feature.element,
      buttonType: ButtonType.elementFeature,
      icon: Icons.interests_outlined,
      text: 'Elements',
    ),
    EditorButtonModel(
      feature: Feature.filter,
      buttonType: ButtonType.filterFeature,
      icon: Icons.palette_outlined,
      text: 'Filters',
    ),
  ];
}
