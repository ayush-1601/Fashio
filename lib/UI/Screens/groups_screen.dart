import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/UI/Colors/custom_colors.dart';
import 'package:flutter_fashion_app/Widgets/barrier_widget.dart';
import 'package:flutter_fashion_app/Widgets/create_new_group_button_widget.dart';
import 'package:flutter_fashion_app/Widgets/group_widget.dart';
import 'package:flutter_fashion_app/Widgets/search_bar_widget.dart';

class GroupsScreen extends StatefulWidget {
  const GroupsScreen({super.key});

  @override
  State<GroupsScreen> createState() => _GroupsScreenState();
}

class _GroupsScreenState extends State<GroupsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor().offWhite,
        centerTitle: true,
        title: Text(
          "Groups",
          style: TextStyle(letterSpacing: 3, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarWidget(),
            CreateNewGroupButtonWidget(),
            BarrierWidget(),

            Column(
              children: [
                GroupWidget(
                  title: "Fashion Bazar",
                  subtitle: "New jewellery in the stock",
                  imagePath: "assets/images/group1.jpg",
                ),
                GroupWidget(
                  title: "Dress 4u",
                  subtitle: "Divine dresses at one stop",
                  imagePath: "assets/images/group4.jpg",
                ),
                GroupWidget(
                  title: "Modern square",
                  subtitle: "Modern accessories for your modern fashion",
                  imagePath: "assets/images/group3.jpg",
                ),
                GroupWidget(
                  title: "The ethnic club",
                  subtitle: "Ethnic wear for you",
                  imagePath: "assets/images/group2.jpg",
                )
              ],
            )

            // ListView.separated(
            //   itemCount: 10,
            //   separatorBuilder: (BuildContext context, int index) {
            //     return SizedBox(
            //       height: 15,
            //     );
            //   },
            //   itemBuilder: (BuildContext context, int index) {
            //     return ListTile(
            //       tileColor: CustomColor().offWhite,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(10)),
            //       leading: CircleAvatar(
            //         radius: MediaQuery.of(context).size.height * 0.03,
            //       ),
            //     ).marginOnly(left: 10, right: 10);
            //   },
            // ).marginOnly(top: 20),
          ],
        ),
      ),
    );
  }
}
