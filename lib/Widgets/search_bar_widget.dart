import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/UI/Colors/custom_colors.dart';
import 'package:get/get.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColor().offWhite),
      margin: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.all(10),
            icon: Icon(CupertinoIcons.search),
            label: const Text("Search groups"),
            labelStyle: TextStyle(color: CustomColor().pink)),
      ).marginAll(10),
    );
  }
}
