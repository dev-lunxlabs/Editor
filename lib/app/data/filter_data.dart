import 'package:flutter/material.dart';

import '../model/editor_button_model.dart';

class FilterModel {
  FilterModel._();

  static List<EditorButtonModel> listButton = const[
    EditorButtonModel(icon: Icons.art_track_outlined, text: 'Templates'),
    EditorButtonModel(icon: Icons.palette_outlined, text: 'Colors'),
    EditorButtonModel(icon: Icons.contrast, text: 'Contrast'),
    EditorButtonModel(icon: Icons.brightness_6, text: 'Brightness'),
    EditorButtonModel(icon: Icons.opacity, text: 'Hue'),
    EditorButtonModel(icon: Icons.filter_vintage_outlined, text: 'Vintage'),
    EditorButtonModel(icon: Icons.filter_drama, text: 'Cloudy'),
    EditorButtonModel(icon: Icons.brightness_5, text: 'Sunny'),
    EditorButtonModel(icon: Icons.wb_auto, text: 'WB'),

  ];
}
