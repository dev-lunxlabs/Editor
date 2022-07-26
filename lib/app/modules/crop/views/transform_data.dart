// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// class TransformData {
//   TransformData({
//     required this.rotation,
//     required this.scale,
//     required this.translate,
//   });
//   final double rotation, scale;
//   final Offset translate;
//
//   factory TransformData.fromRect(
//     Rect rect,
//     Size layout,
//     VideoPlayerController videoEditorController,
//   ) {
//     final double videoAspect = videoEditorController.value.aspectRatio;
//     final double relativeAspect = rect.width / rect.height;
//
//     final double xScale = layout.width / rect.width;
//     final double yScale = layout.height / rect.height;
//
//     final double scale = videoAspect < 0.8
//         ? relativeAspect <= 1
//             ? yScale
//             : xScale + videoAspect
//         : relativeAspect < 0.8
//             ? yScale + videoAspect
//             : xScale;
//
//     final double rotation = 0.0; //-controller.rotation * (3.1416 / 180.0);
//
//     final Offset translate = Offset(
//       ((layout.width - rect.width) / 2) - rect.left,
//       ((layout.height - rect.height) / 2) - rect.top,
//     );
//     return TransformData(
//       rotation: rotation,
//       scale: scale,
//       translate: translate,
//     );
//   }
//
//   factory TransformData.fromController(
//       VideoPlayerController videoPlayerController) {
//     return TransformData(
//       rotation: -controller.rotation * (3.1416 / 180.0),
//       scale: 1.0,
//       translate: Offset.zero,
//     );
//   }
// }
