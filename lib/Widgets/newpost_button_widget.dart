import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class NewPostButtonWidget extends StatelessWidget {
  const NewPostButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(CupertinoIcons.plus_app_fill),
      onTap: () {},
      tileColor: Colors.amber,
      title: Text("ADD NEW POST"),
      trailing: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.photo_camera),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.photo_camera),
          )
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ).marginAll(20);
  }
}
