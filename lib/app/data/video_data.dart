import 'package:flutter/material.dart';
import '../core/enums/video_feature.dart';
import '../model/editor_button_model.dart';

class VideoData {
  const VideoData._();

  static const List<EditorButtonModel> listButton = [
    EditorButtonModel(
      icon: Icons.cut,
      text: 'Trim',
      videoFeature: VideoFeature.trim,
    ),
    EditorButtonModel(
      icon: Icons.crop,
      text: 'Crop',
      videoFeature: VideoFeature.crop,
    ),
    EditorButtonModel(
      icon: Icons.add_box,
      text: 'Add',
      videoFeature: VideoFeature.add,
    ),
    EditorButtonModel(
      icon: Icons.speed,
      text: 'Speed',
      videoFeature: VideoFeature.speed,
    ),
    EditorButtonModel(
      icon: Icons.flip,
      text: 'Flip',
      videoFeature: VideoFeature.flipX,
    ),
    EditorButtonModel(
      icon: Icons.abc,
      text: 'Text',
      videoFeature: VideoFeature.text,
    ),
    EditorButtonModel(
      icon: Icons.closed_caption,
      text: 'Caption',
      videoFeature: VideoFeature.autoCaption,
    ),
    EditorButtonModel(
      icon: Icons.rotate_90_degrees_cw_outlined,
      text: 'Rotate',
      videoFeature: VideoFeature.rotate,
    ),
    EditorButtonModel(
      icon: Icons.roller_shades_closed,
      text: 'Cover',
      videoFeature: VideoFeature.cover,
    ),
    EditorButtonModel(
      icon: Icons.aspect_ratio,
      text: 'Ratio',
      videoFeature: VideoFeature.aspectRatio,
    ),
    EditorButtonModel(
      icon: Icons.filter_none,
      text: 'Transitions',
      videoFeature: VideoFeature.transition,
    ),
  ];
}
