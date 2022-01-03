// ignore_for_file: unnecessary_overrides, non_constant_identifier_names

import 'package:get/get.dart';

class SearchController extends GetxController {
  final count = 0.obs;
  RxInt index0 = 0.obs;
  RxInt index1 = 0.obs;
  RxInt index2 = 0.obs;
  RxInt index3 = 0.obs;
  RxInt index4 = 0.obs;

  RxList Regions = [
    {'title': 'All'.tr, 'i': 0},
    {'title': 'American'.tr, 'i': 1},
    {'title': 'European'.tr, 'i': 2},
    {'title': 'Japanese'.tr, 'i': 3},
    {'title': 'Korean'.tr, 'i': 4},
    {'title': 'Chinese'.tr, 'i': 5}
  ].obs;
  RxList Category = [
    {'title': 'All'.tr, 'i': 0},
    {'title': 'Mobile Accessories'.tr, 'i': 1},
    {'title': 'Permium Quality Control'.tr, 'i': 2}
  ].obs;
  RxList CarType = [
    {'title': 'All'.tr, 'i': 0},
    {'title': 'Cadilliac'.tr, 'i': 1},
    {'title': 'Dodge'.tr, 'i': 2},
    {'title': 'Ford'.tr, 'i': 3},
    {'title': 'GNC'.tr, 'i': 4},
    {'title': 'Hundai'.tr, 'i': 5},
  ].obs;
  RxList CarModel = [
    {'title': 'All'.tr, 'i': 0},
    {'title': 'CT4'.tr, 'i': 1},
    {'title': 'CT5'.tr, 'i': 2},
    {'title': 'XTS'.tr, 'i': 3},
    {'title': 'CTS'.tr, 'i': 4},
    {'title': 'XT4'.tr, 'i': 5},
    {'title': 'XT5'.tr, 'i': 6},
    {'title': 'XT6'.tr, 'i': 7}
  ].obs;
  RxList YearManufactured = [
    {'title': 'All'.tr, 'i': 0},
    {'title': '1980'.tr, 'i': 1},
    {'title': '1981'.tr, 'i': 2},
    {'title': '1982'.tr, 'i': 3},
    {'title': '1983'.tr, 'i': 4},
    {'title': '1984'.tr, 'i': 5},
    {'title': '1985'.tr, 'i': 6},
    {'title': '1986'.tr, 'i': 7}
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
