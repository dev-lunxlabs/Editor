import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/enums/button_type.dart';

import '../../../core/enums/feature.dart';
import '../controllers/editor_controller.dart';
import 'console.dart';

class EditorView extends GetView<EditorController> {
  const EditorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          controller.callFeature(
            feature: Feature.none,
            buttonType: ButtonType.feature,
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Get.height - 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.pink.shade100,
                      Colors.purple.shade50,
                      Colors.blue.shade100,
                    ]),
              ),
              // child: Center(
              //   child: ElevatedButton(
              //     onPressed: () {
              //       controller.showLayer();
              //     },
              //     child: const Text(" hfjd"),
              //   ),
              // ),
            ),

            // SizedBox(
            //   height: 600,
            //   child: VideoPlayer(controller.videoPlayerController),
            // ),
            Console(controller: controller),
          ],
        ),
      ),
    );
  }

  /*



    // return ExpansionTile(
    //   onExpansionChanged: (value) {
    //     debugPrint("show ButtonBar: $value");
    //     controller.showButtonBar.value = value;
    //   },
    //   tilePadding: const EdgeInsets.all(0),
    //   title: Row(
    //     children: [
    //       TextButton(
    //         onPressed: () {},
    //         style: TextButton.styleFrom(
    //           primary: Colors.black,
    //           backgroundColor: Colors.blue[50],
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(25.0),
    //           ),
    //         ),
    //         child: const Icon(Icons.undo),
    //       ),
    //       TextButton(
    //         onPressed: () {},
    //         style: TextButton.styleFrom(
    //           primary: Colors.black,
    //           backgroundColor: Colors.blue[50],
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(25.0),
    //           ),
    //         ),
    //         child: const Icon(Icons.redo),
    //       ),
    //       const Expanded(child: SizedBox()),
    //       TextButton(
    //         onPressed: () {
    //           // controller.videoPlayerController.value.isPlaying
    //           //     ? controller.videoPlayerController.pause()
    //           //     : controller.videoPlayerController.play();
    //         },
    //         style: TextButton.styleFrom(
    //           primary: Colors.black,
    //           backgroundColor: Colors.blue[50],
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(25.0),
    //           ),
    //         ),
    //         child: const Icon(
    //           // controller.videoPlayerController.value.isPlaying
    //           //     ? Icons.pause
    //           //     :
    //           Icons.play_arrow_rounded,
    //         ),
    //       ),
    //       const Expanded(child: SizedBox()),
    //       TextButton(
    //         onPressed: () {},
    //         style: TextButton.styleFrom(
    //           primary: Colors.black,
    //           backgroundColor: Colors.blue[50],
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(25.0),
    //           ),
    //         ),
    //         child: const Icon(Icons.check),
    //       ),
    //       // TextButton(
    //       //   onPressed: () {},
    //       //   style: TextButton.styleFrom(
    //       //     primary: Colors.black,
    //       //     backgroundColor: Colors.purple[50],
    //       //     shape: RoundedRectangleBorder(
    //       //       borderRadius: BorderRadius.circular(25.0),
    //       //     ),
    //       //   ),
    //       //   child: const Icon(Icons.arrow_drop_down_rounded),
    //       // ),
    //     ],
    //   ),
    //   children: [
    //     Container(
    //       height: 300,
    //       color: Colors.pink,
    //     )
    //   ],
    // );
  }

  Widget buttonBar() {
    return Obx(() {
      return controller.showButtonBar.isTrue
          ? controller.showPrimaryBtn.isTrue
              ? Row(
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
                                controller.selectBottomList(index + 1);
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
                    const SizedBox(width: 18),
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
                )
              : SizedBox(
                  height: 70,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.listButton.length,
                      itemBuilder: (_, index) {
                        return EditorButton(
                          onTap: () {},
                          icon: controller.listButton[index].icon,
                          text: controller.listButton[index].text,
                        );
                      }),
                )
          : const SizedBox();
    });
  }

   */
}
