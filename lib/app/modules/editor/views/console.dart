import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/enums/button_type.dart';
import '../../../widgets/editor_button.dart';
import '../controllers/editor_controller.dart';

class Console extends StatelessWidget {
  const Console({Key? key, required this.controller}) : super(key: key);
  final EditorController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
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
                        controller.switchConsole(
                          buttonType: ButtonType.feature,
                          feature: controller.listButton[index].feature,
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
                    child: Container(color: Colors.purple),
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
                      controller.switchConsole(
                        buttonType: ButtonType.videoFeature,
                        videoFeature: controller.listButton[index].videoFeature,
                      );
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
                      controller.switchConsole(
                        buttonType: ButtonType.audioFeature,
                        audioFeature: controller.listButton[index].audioFeature,
                      );
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
                      controller.switchConsole(
                        buttonType: ButtonType.elementFeature,
                        elementFeature:
                            controller.listButton[index].elementFeature,
                      );
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
                      controller.switchConsole(
                        buttonType: ButtonType.filterFeature,
                        filterFeature:
                            controller.listButton[index].filterFeature,
                      );
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
    });
  }
}
