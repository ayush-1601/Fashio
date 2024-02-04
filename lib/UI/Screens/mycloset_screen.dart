import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/Controllers/image_picker_controller.dart';
import 'package:flutter_fashion_app/UI/Colors/custom_colors.dart';
import 'package:flutter_fashion_app/Widgets/my_closet_profile_widget.dart';
import 'package:get/get.dart';

class MyClosetScreen extends StatefulWidget {
  const MyClosetScreen({super.key});

  @override
  State<MyClosetScreen> createState() => _MyClosetScreenState();
}

class _MyClosetScreenState extends State<MyClosetScreen> {
  @override
  Widget build(BuildContext context) {
    ImagePickerController controller = Get.put(ImagePickerController());
    List<String>? category = ["Shirts", "Jeans", "Top", "Jewellery"];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: CustomColor().offWhite,
        centerTitle: true,
        title: const Text(
          "My Closet",
          style: TextStyle(letterSpacing: 3, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          const MyClosetProfileWidget(),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: CustomColor().offWhite),
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 2, bottom: 2),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(CupertinoIcons.plus_rectangle),
                const SizedBox(
                  width: 20,
                ),
                const Text("ADD NEW POST"),
                const Expanded(child: SizedBox()),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: IconButton(
                      onPressed: () {
                        controller.getImagefromCamera();
                      },
                      icon: const Icon(CupertinoIcons.camera)),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: IconButton(
                      onPressed: () {
                        controller.getImagefromGallery();
                      },
                      icon: const Icon(CupertinoIcons.photo_on_rectangle)),
                )
              ],
            ),
          ),
          Expanded(
            child: Obx(
              () => GridView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  crossAxisCount: 2,
                ),
                itemCount: controller.imageList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: CustomColor().offWhite,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(category[index % 4].toString()),
                        ),
                        Expanded(
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: controller.imageList.isNotEmpty
                                ? Image(
                                    fit: BoxFit.contain,
                                    image: FileImage(File(controller
                                        .imageList[index]
                                        .toString())))
                                : null,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
