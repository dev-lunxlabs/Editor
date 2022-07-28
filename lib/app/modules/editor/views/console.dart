import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/enums/button_type.dart';
import '../../../functions/pick_media.dart';
import 'editor_button.dart';
import '../controllers/call_audio_feature.dart';
import '../controllers/call_element_feature.dart';
import '../controllers/call_filter_feature.dart';
import '../controllers/call_video_feature.dart';
import '../controllers/editor_controller.dart';

class Console extends StatelessWidget {
  const Console({Key? key, required this.controller}) : super(key: key);
  final EditorController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: 245,
        child: controller.cButtonType.value == ButtonType.layer
            ? layer()
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  topBar(),
                  timeline(),
                  buttonBar(),
                ],
              ),
      );
    });
  }

  Widget layer() {
    return SizeTransition(
      sizeFactor: controller.animation,
      axis: Axis.vertical,
      axisAlignment: -1,
      child: Container(
        height: 250,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 40,
              width: 100,
              child: Container(
                margin: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: 50,
              child: Container(
                margin: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Colors.indigo[100],
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: 200,
              child: Container(
                margin: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: 300,
              child: Container(
                margin: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Colors.amber[100],
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              child: Container(
                margin: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget timeline() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 280,
            height: 65,
            margin: const EdgeInsets.symmetric(horizontal: 12.0),
            decoration: BoxDecoration(
              color: Colors.amber[300],
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              width: 90,
              height: 65,
              child: TextButton(
                onPressed: () {
                  pickVideo().then((value) {
                    controller.listVPC.add(value.videoPlayerController);
                    controller.videoPath.add(value.videoPath);
                  });
                },
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                ),
                child: const Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget topBar() {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            primary: Colors.black,
            backgroundColor: Colors.blue[50],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          child: const Icon(Icons.undo),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            primary: Colors.black,
            backgroundColor: Colors.blue[50],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          child: const Icon(Icons.redo),
        ),
        const Expanded(child: SizedBox()),
        TextButton(
          onPressed: () {
            controller.listVPC[0].value.isPlaying
                ? controller.listVPC[0].pause()
                : controller.listVPC[0].play();
          },
          style: TextButton.styleFrom(
            primary: Colors.black,
            backgroundColor: Colors.blue[50],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          child: Icon(
            controller.listVPC[0].value.isPlaying
                ? Icons.pause
                : Icons.play_arrow_rounded,
          ),
        ),
        const Expanded(child: SizedBox()),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            primary: Colors.black,
            backgroundColor: Colors.blue[50],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          child: const Icon(Icons.check),
        ),
        TextButton(
          onPressed: () {
            controller.cButtonType.value = ButtonType.layer;
            controller.cButtonType.value == ButtonType.layer
                ? controller.showLayerController.reverse()
                : controller.showLayerController.forward();
          },
          style: TextButton.styleFrom(
            primary: Colors.black,
            backgroundColor: Colors.purple[50],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          child: const Icon(Icons.keyboard_arrow_down_rounded),
        ),
      ],
    );
  }

  Widget buttonBar() {
    if (controller.cButtonType.value == ButtonType.none) {
      return const SizedBox();
    } else if (controller.cButtonType.value == ButtonType.feature) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 70,
            width: Get.width - 90,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.listButton.length,
                itemBuilder: (_, index) {
                  return EditorButton(
                    onTap: () {
                      controller.callFeature(
                        feature: controller.listButton[index].feature!,
                        buttonType: controller.listButton[index].buttonType!,
                      );
                    },
                    icon: controller.listButton[index].icon,
                    text: controller.listButton[index].text,
                  );
                }),
          ),
          const SizedBox(
            height: 40,
            child: VerticalDivider(
              thickness: 1,
              width: 0,
            ),
          ),
          const SizedBox(width: 15),
          FloatingActionButton(
            onPressed: () {
              // showModalBottomSheet(
              //     isScrollControlled: true,
              //     context: context,
              //     builder: (_) {
              //       return SizedBox(
              //         height: 600,
              //       );
              //     });
              Get.bottomSheet(
                SizedBox(
                  height: 700,
                  child: Container(color: Colors.grey.shade50),
                ),
              );
            },
            child: const Icon(Icons.add),
          )
        ],
      );
    } else if (controller.cButtonType.value == ButtonType.layer) {
      return const SizedBox();
    } else {
      if (controller.cButtonType.value == ButtonType.videoFeature) {
        return SizedBox(
          height: 70,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: controller.listButton.length,
              itemBuilder: (_, index) {
                return EditorButton(
                  onTap: () {
                    callVideoFeature(
                        controller.listButton[index].videoFeature!);
                  },
                  icon: controller.listButton[index].icon,
                  text: controller.listButton[index].text,
                );
              }),
        );
      } else if (controller.cButtonType.value == ButtonType.audioFeature) {
        return SizedBox(
          height: 70,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: controller.listButton.length,
              itemBuilder: (_, index) {
                return EditorButton(
                  onTap: () {
                    callAudioFeature(
                        controller.listButton[index].audioFeature!);
                  },
                  icon: controller.listButton[index].icon,
                  text: controller.listButton[index].text,
                );
              }),
        );
      } else if (controller.cButtonType.value == ButtonType.elementFeature) {
        return SizedBox(
          height: 70,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: controller.listButton.length,
              itemBuilder: (_, index) {
                return EditorButton(
                  onTap: () {
                    callElementFeature(
                        controller.listButton[index].elementFeature!);
                  },
                  icon: controller.listButton[index].icon,
                  text: controller.listButton[index].text,
                );
              }),
        );
      } else if (controller.cButtonType.value == ButtonType.filterFeature) {
        return SizedBox(
          height: 70,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: controller.listButton.length,
              itemBuilder: (_, index) {
                return EditorButton(
                  onTap: () {
                    callFilterFeature(
                        controller.listButton[index].filterFeature!);
                  },
                  icon: controller.listButton[index].icon,
                  text: controller.listButton[index].text,
                );
              }),
        );
      } else {
        return const SizedBox();
      }
    }
  }
}