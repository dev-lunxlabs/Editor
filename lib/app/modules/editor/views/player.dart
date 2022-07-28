import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../controllers/editor_controller.dart';

class Player extends StatelessWidget {
  const Player({Key? key, required this.controller}) : super(key: key);
  final EditorController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: controller.listVPC[0].value.size.height,
      //width: MediaQuery.of(context).size.width,
      child: AspectRatio(
        aspectRatio: 1,
        child: VideoPlayer(controller.currentVPC.vpc),
      ),
    );
  }
}
