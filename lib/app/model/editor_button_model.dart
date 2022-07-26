import 'package:flutter/material.dart';
import '../core/enums/audio_feature.dart';
import '../core/enums/button_type.dart';
import '../core/enums/element_feature.dart';
import '../core/enums/feature.dart';
import '../core/enums/filter_feature.dart';
import '../core/enums/video_feature.dart';

class EditorButtonModel {
  const EditorButtonModel({
    this.feature,
    this.buttonType,
    this.videoFeature,
    this.audioFeature,
    this.elementFeature,
    this.filterFeature,
    required this.icon,
    required this.text,
  });
  final Feature? feature;
  final ButtonType? buttonType;
  final VideoFeature? videoFeature;
  final AudioFeature? audioFeature;
  final ElementFeature? elementFeature;
  final FilterFeature? filterFeature;

  final IconData icon;
  final String text;
}
