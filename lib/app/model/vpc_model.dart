import 'package:video_player/video_player.dart';

class VPCModel {
  const VPCModel({
    this.startAt,
    this.endAt,
    this.height,
    this.width,
    this.volume,
    this.listFrames,
    required this.vpc,
  });

  final Duration? startAt, endAt;
  final double? height, width, volume;
  final List<List<String>>? listFrames;
  final VideoPlayerController vpc;
}
