import 'package:video_player/video_player.dart';

class VideoPickerModel {
  const VideoPickerModel({
    required this.videoPath,
    required this.framesPath,
    required this.videoPlayerController,
  });
  final String videoPath;
  final List<String> framesPath;
  final VideoPlayerController videoPlayerController;
}
