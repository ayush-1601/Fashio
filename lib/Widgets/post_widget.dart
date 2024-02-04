import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/UI/Colors/custom_colors.dart';
import 'package:flutter_fashion_app/Widgets/bottom_sheet_field_widget.dart';
import 'package:get/get.dart';

class PostWidget extends StatelessWidget {
  final String? imageURL;
  final String? category;
  final int index;

  PostWidget({super.key, this.imageURL, this.category, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.loose,
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              color: CustomColor().lightpink,
              borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
          padding: EdgeInsets.all(5),
          height: MediaQuery.of(context).size.height / 5,
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    AssetImage("assets/images/group1.jpg"), // radius: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Username"),
              Expanded(child: SizedBox()),
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.heart),
                selectedIcon: Icon(
                  CupertinoIcons.heart_fill,
                  color: CustomColor().pink,
                ),
              ),
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        backgroundColor: CustomColor().offWhite,
                        context: context,
                        builder: (BuildContext context) {
                          return Wrap(
                            runSpacing: 10,
                            children: [
                              const BottomSheetFieldWidget(
                                leadingIcon: Icon(CupertinoIcons.link),
                                trailingIcon: Icon(CupertinoIcons.share_up),
                                fieldText: "Product URL",
                              ),
                              BottomSheetFieldWidget(
                                leadingIcon: Icon(Icons.category_outlined),
                                fieldText: category,
                              ),
                            ],
                          ).marginOnly(top: 20, bottom: 20);
                        });
                  },
                  icon: const Icon(CupertinoIcons.list_bullet_below_rectangle))
            ],
          ).marginAll(5),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
          margin: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 60),
          // color: Color(0xfffa5c80),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Color.fromARGB(255, 0, 14, 61),
              color: Colors.white,
              image: DecorationImage(image: NetworkImage(imageURL.toString()))),
          // color: Color(0xff2bf859),
          // child: Image.network(
          //     imageURL.toString()),
        ),
      ],
    );
  }
}
