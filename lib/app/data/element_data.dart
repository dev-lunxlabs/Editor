import 'package:flutter/material.dart';

import '../model/editor_button_model.dart';

class ElementData {
  const ElementData._();

  static const List<EditorButtonModel> listButton = [
    EditorButtonModel(icon: Icons.brush_outlined, text: 'Brush'),
    EditorButtonModel(icon: Icons.texture, text: 'Background'),
    EditorButtonModel(icon: Icons.font_download, text: 'Watermark'),
    EditorButtonModel(icon: Icons.crop_5_4, text: 'Border'),
    EditorButtonModel(icon: Icons.add_reaction, text: 'Stickers'),
    EditorButtonModel(icon: Icons.picture_in_picture, text: 'Pip'),
  ];
}

