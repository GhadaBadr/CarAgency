// ignore_for_file: unnecessary_overrides, unused_field

import 'package:get/get.dart';

class CartController extends GetxController {
  double remove = 0.0;
  double total = 0.0;
  double discount = 0.0;

  RxInt itemCount = 0.obs;

  RxList newList = [
    {
      'url': 'https://i.ibb.co/0KV74wK/download-2.jpg',
      'title': 'BalanceOn Balance Seat - Size "M" RED - Imported from Korea'
          .tr
          .toUpperCase(),
      'price': 23.25,
      'id': 0,
      'itemCount': 0
    },
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
  void increment() {}
}
