import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../controllers/editor_controller.dart';

class EditorPlayer extends StatefulWidget {
  const EditorPlayer({Key? key}) : super(key: key);

  @override
  State<EditorPlayer> createState() => _EditorPlayerState();
}

class _EditorPlayerState extends State<EditorPlayer> {
  final controller = Get.put(EditorController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: controller.listVPC[0].value.aspectRatio,
        child: VideoPlayer(controller.listVPC[0]),
      ),
    );
  }
}

class Player extends StatelessWidget {
  const Player({Key? key, required this.controller}) : super(key: key);
  final EditorController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: controller.listVPC[0].value.size.height,
      //width: MediaQuery.of(context).size.width,
      child: AspectRatio(
        aspectRatio: controller.listVPC[0].value.aspectRatio,
        child: VideoPlayer(controller.listVPC[0]),
      ),
    );
  }
}

class PlayerModel {
  PlayerModel({required this.listVideoModel});
  final List<VideoModel> listVideoModel;
}

class VideoModel {
  VideoModel({
    required this.startDuration,
    required this.endDuration,
    required this.volume,
    required this.height,
    required this.width,
    required this.path,
  });

  final double startDuration, endDuration, volume, height, width;
  final String path;
}

