import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/editor_button.dart';
import '../controllers/editor_controller.dart';

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
          debugPrint("index is: 0");
          controller.selectBottomList(0);
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
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    controller.showLayer();
                  },
                  child: const Text(" hfjd"),
                ),
              ),
            ),

            // SizedBox(
            //   height: 600,
            //   child: VideoPlayer(controller.videoPlayerController),
            // ),
            const Divider(height: 0),
            topBar(),
            const Expanded(child: SizedBox()),
            buttonBar(),
            Obx(() {
              return SizedBox(height: controller.showButtonBar.isTrue ? 10 : 0);
            }),
          ],
        ),
      ),
    );
  }

  Widget topBar() {
    return SizeTransition(
      sizeFactor: controller.animation,
      axis: Axis.vertical,
      axisAlignment: -1,
      child: Container(
        height: 250,
        //color: Colors.teal[50],
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
    return Obx((){
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
}
