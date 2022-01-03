// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class StoreAllProductsController extends GetxController {
  final count = 0.obs;
  RxInt index = 0.obs;

  final RxList listbutton = [
    {'title': 'All'.tr, 'i': 0},
    {'title': 'Mobile Accessories'.tr, 'i': 1},
    {'title': 'Premium Quality Car'.tr, 'i': 2},
  ].obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
