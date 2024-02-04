import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/UI/Colors/custom_colors.dart';

class MyClosetProfileWidget extends StatelessWidget {
  const MyClosetProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width,
      // color: Colors.white,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: Colors.white
        color: Color(0xffFF90BC),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/Furrl1.jpg"),
            radius: 50,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: CustomColor().offWhite),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jane Williamson",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("williamjane_03")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
