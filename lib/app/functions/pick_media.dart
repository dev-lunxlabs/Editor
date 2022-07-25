import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:video_player/video_player.dart';

Future<VideoPlayerController> pickVideo() async {
  late VideoPlayerController videoPlayerController;
  FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.video);
  String? videoPath = result?.files.single.path;
  if (videoPath != null) {
    videoPlayerController = VideoPlayerController.file(File(videoPath));
    videoPlayerController.initialize();
  }

  // await showDialog<void>(
  //   context: context,
  //   builder: (BuildContext context) {
  //     int? selectedRadio = 0;
  //     return AlertDialog(
  //       content: StatefulBuilder(
  //         builder: (BuildContext context, StateSetter setState) {
  //           return Column(
  //             mainAxisSize: MainAxisSize.min,
  //             children: List<Widget>.generate(4, (int index) {
  //               return Radio<int>(
  //                 value: index,
  //                 groupValue: selectedRadio,
  //                 onChanged: (int? value) {
  //                   setState(() => selectedRadio = value);
  //                 },
  //               );
  //             }),
  //           );
  //         },
  //       ),
  //     );
  //   },
  // );

  return videoPlayerController;
}
