import 'package:flutter/cupertino.dart';
import 'package:flutter_fashion_app/UI/Colors/custom_colors.dart';
import 'package:get/get.dart';

class BarrierWidget extends StatelessWidget {
  const BarrierWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            height: 1,
            color: CustomColor().pink,
          ),
        ),
        Text(
          "Existing Groups",
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            height: 1,
            color: CustomColor().pink,
          ),
        ),
      ],
    ).marginAll(10);
  }
}
