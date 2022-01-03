// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class StoreProductDetailsController extends GetxController {
  final count = 0.obs;
  RxInt i = 0.obs;
  RxBool like = false.obs;
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
