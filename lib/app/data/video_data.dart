import 'package:flutter/material.dart';

import '../core/enums/feature_enum.dart';
import '../model/editor_button_model.dart';

class VideoModel {
  VideoModel._();

  static List<EditorButtonModel> listButton = const [
    EditorButtonModel(
      icon: Icons.cut,
      text: 'Trim',
      feature: Feature.trim,
    ),
    EditorButtonModel(
      icon: Icons.crop,
      text: 'Crop',
      feature: Feature.crop,
    ),
    EditorButtonModel(
      icon: Icons.add_box,
      text: 'Add',
      feature: Feature.add,
    ),
    EditorButtonModel(
      icon: Icons.speed,
      text: 'Speed',
      feature: Feature.speed,
    ),
    EditorButtonModel(
      icon: Icons.flip,
      text: 'Flip',
      feature: Feature.flipX,
    ),
    EditorButtonModel(
      icon: Icons.abc,
      text: 'Text',
      feature: Feature.text,
    ),
    EditorButtonModel(
      icon: Icons.closed_caption,
      text: 'Caption',
      feature: Feature.autoCaption,
    ),
    EditorButtonModel(
      icon: Icons.rotate_90_degrees_cw_outlined,
      text: 'Rotate',
      feature: Feature.rotate,
    ),
    EditorButtonModel(
      icon: Icons.roller_shades_closed,
      text: 'Cover',
      feature: Feature.cover,
    ),
    EditorButtonModel(
      icon: Icons.aspect_ratio,
      text: 'Ratio',
      feature: Feature.aspectRatio,
    ),
    EditorButtonModel(
      icon: Icons.filter_none,
      text: 'Transitions',
      feature: Feature.transition,
    ),
  ];
}
