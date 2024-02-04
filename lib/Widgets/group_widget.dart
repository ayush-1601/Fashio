import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/UI/Colors/custom_colors.dart';
import 'package:get/get.dart';

class GroupWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  const GroupWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      tileColor: CustomColor().offWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
        radius: MediaQuery.of(context).size.height * 0.03,
      ),
    ).marginOnly(left: 10, right: 10, bottom: 10);
  }
}
