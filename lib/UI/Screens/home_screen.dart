import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/Controllers/navigation_controller.dart';
import 'package:flutter_fashion_app/UI/Colors/custom_colors.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: CustomColor().offWhite,
          selectedIndex: controller.selectedIndex.value,
          elevation: 50,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          destinations: const <NavigationDestination>[
            NavigationDestination(
                icon: Icon(CupertinoIcons.rectangle_stack_person_crop),
                label: "My Closet"),
            NavigationDestination(
                icon: Icon(CupertinoIcons.group), label: "Groups"),
            NavigationDestination(
                icon: Icon(Icons.home_filled), label: "Discover"),
            NavigationDestination(
                icon: Icon(CupertinoIcons.square_favorites_alt_fill),
                label: "Saved"),
            NavigationDestination(
                icon: Icon(CupertinoIcons.chat_bubble_text), label: "Chat")
          ],
          // backgroundColor: Color(0xffff82b59),
          surfaceTintColor: Colors.white,
          indicatorColor: CustomColor().pink,
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}
