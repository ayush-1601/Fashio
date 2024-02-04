import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/Controllers/product_controller.dart';
import 'package:flutter_fashion_app/Models/product_model.dart';
import 'package:flutter_fashion_app/UI/Colors/custom_colors.dart';
import 'package:flutter_fashion_app/Widgets/post_widget.dart';
import 'package:get/get.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put<ProductController>(ProductController());

    List<ProductModel> productList = controller.productList;

    return Scaffold(
      backgroundColor: CustomColor().offWhite,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: CustomColor().offWhite,
        title: const Text(
          "Fashio",
          style: TextStyle(
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.w200,
              fontSize: 50),
        ),
        // title: Row(
        //   children: [
        //     Text("Fashio"),
        //     Icon(Icons.keyboard_arrow_down)
        //   ],
        // ),
      ),

      body: Column(
        children: [
          // PostWidget(),
          Expanded(
            child: Obx(
              () => controller.isLoading.value == true
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.separated(
                      physics: BouncingScrollPhysics(),
                      itemCount: productList.length,
                      itemBuilder: (_, index) {
                        return PostWidget(
                          imageURL: productList[index].image,
                          category: productList[index].category,
                          index: index,
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 50,
                            child: Divider(
                              thickness: 10,
                              color: Colors.white,
                            ),
                          )),
            ),
          ),
        ],
      ),
      // drawer: Drawer(
      //   // shape: RoundedRectangleBorder(
      //   //     borderRadius: BorderRadius.only(
      //   //         topRight: Radius.circular(0),
      //   //         bottomRight: Radius.circular(300))),
      //   backgroundColor: Color(0xffff82b59),
      // ),
    );
  }
}
