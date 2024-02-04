import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/UI/Screens/discover_screen.dart';
import 'package:flutter_fashion_app/UI/Screens/groups_screen.dart';
import 'package:flutter_fashion_app/UI/Screens/mycloset_screen.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 2.obs;

  final screens = [
    MyClosetScreen(),
    GroupsScreen(),
    DiscoverScreen(),
    Container(
      alignment: Alignment.center,
      child: Text("Coming soon..."),
    ),
    Container(
      alignment: Alignment.center,
      child: Text("Coming soon..."),
    ),
  ];
}
