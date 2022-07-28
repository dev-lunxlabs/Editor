class VPCModel {
  const VPCModel({
    required this.videoPath,
    required this.startAt,
    required this.endAt,
    required this.height,
    required this.width,
    required this.volume,
    required this.listFrames,
  });
  final String videoPath;
  final Duration startAt, endAt;
  final double height, width, volume;
  final List<List<String>> listFrames;
}