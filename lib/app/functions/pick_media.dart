import 'dart:io';
import 'package:editor/app/model/video_picker_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

Future<VideoPickerModel> pickVideo() async {
  late VideoPlayerController videoPlayerController;
  late String videoPath;

  FilePickerResult? result =
      await FilePicker.platform.pickFiles(type: FileType.video);

  if (result != null) {
    videoPath = result.files.single.path!;
    await Get.defaultDialog(
      content: StatefulBuilder(
        builder: (_, setState) {
          videoPlayerController = VideoPlayerController.file(File(videoPath));
          videoPlayerController.initialize().then((value) => setState(() {}));

          return const CircularProgressIndicator();
        },
      ),
    );
  }

  return VideoPickerModel(
    videoPath: videoPath,
    framesPath: [''],
    videoPlayerController: videoPlayerController,
  );
}
