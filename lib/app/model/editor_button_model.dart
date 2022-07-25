import 'package:flutter/material.dart';

import '../core/enums/editor_enum.dart';
import '../core/enums/feature_enum.dart';

class EditorButtonModel {
  const EditorButtonModel({
    this.feature,
    required this.icon,
    required this.text,
  });
  final Feature? feature;
  final IconData icon;
  final String text;
}


