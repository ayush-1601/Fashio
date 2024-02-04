import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/UI/Colors/custom_colors.dart';

class CreateNewGroupButtonWidget extends StatelessWidget {
  const CreateNewGroupButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColor().offWhite),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 2, bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "CREATE NEW GROUP",
            style: TextStyle(letterSpacing: 2),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.person_add_solid)),
          ),
        ],
      ),
    );
  }
}
