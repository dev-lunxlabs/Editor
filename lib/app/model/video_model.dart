import 'package:editor/app/modules/editor/controllers/editor_enum.dart';
import 'package:flutter/material.dart';

import 'editor_button_model.dart';

class VideoModel {
  VideoModel._();

  static List<EditorButtonModel> listButton = const[
    EditorButtonModel(
      icon: Icons.cut,
      text: 'Trim',
      operation: Operation.trim,
    ),
    EditorButtonModel(
      icon: Icons.crop,
      text: 'Crop',
      operation: Operation.crop,
    ),
    EditorButtonModel(
      icon: Icons.add_box,
      text: 'Add',
      operation: Operation.add,
    ),
    EditorButtonModel(
      icon: Icons.speed,
      text: 'Speed',
      operation: Operation.speed,
    ),
    EditorButtonModel(
      icon: Icons.flip,
      text: 'Flip',
      operation: Operation.flip,
    ),
    EditorButtonModel(
      icon: Icons.abc,
      text: 'Text',
      operation: Operation.text,
    ),
    EditorButtonModel(
      icon: Icons.closed_caption,
      text: 'Caption',
      operation: Operation.autoCaption,
    ),
    EditorButtonModel(
      icon: Icons.rotate_90_degrees_cw_outlined,
      text: 'Rotate',
      operation: Operation.rotate,
    ),
    EditorButtonModel(
      icon: Icons.roller_shades_closed,
      text: 'Cover',
      operation: Operation.cover,
    ),
    EditorButtonModel(
      icon: Icons.aspect_ratio,
      text: 'Ratio',
      operation: Operation.aspectRatio,
    ),
    EditorButtonModel(
      icon: Icons.filter_none,
      text: 'Transitions',
      operation: Operation.transition,
    ),
  ];
}
