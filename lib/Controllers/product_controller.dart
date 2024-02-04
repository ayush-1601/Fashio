import 'dart:convert';

import 'package:flutter_fashion_app/Models/product_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  var productList = <ProductModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    productList.clear();
    getProducts();
  }

  getProducts() async {
    String productURL = "https://fakestoreapi.com/products";

    final response = await http.get(Uri.parse(productURL));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      productList.value = result.map((e) => ProductModel.fromJson(e)).toList();

      isLoading.value = false;
      update();
    } else {
      Get.snackbar("Error", response.statusCode.toString());
    }
  }
}
