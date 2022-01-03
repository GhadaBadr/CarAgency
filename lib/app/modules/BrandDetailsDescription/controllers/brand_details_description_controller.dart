// ignore_for_file: unnecessary_overrides, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrandDetailsDescriptionController extends GetxController {
  final count = 0.obs;
  final RxList BodytypeDetails = [
    {
      'url': 'https://i.ibb.co/q0GzCmw/1.jpg',
      'title': 'Accent'.tr,
      'logo': 'https://i.ibb.co/3YXn9Cp/l1.jpg',
      'des': 'Price Starting from 44 descrption more text'.tr,
      'des1': 'Automatic'.tr,
      'des2': '210 Kph'.tr,
      'des3': 'V4'.tr,
      'c': Colorlist1
    },
    {
      'url': 'https://i.ibb.co/RvVqnvd/2.jpg',
      'title': 'MG6'.tr,
      'logo': 'https://i.ibb.co/mvvBHgd/l2.jpg',
      'des': 'Price Starting from 44 descrption more text'.tr,
      'des1': 'Automatic'.tr,
      'des2': '210 Kph'.tr,
      'des3': 'V4'.tr,
      'c': Colorlist2
    },
    {
      'url': 'https://i.ibb.co/jZt8jjS/3.jpg',
      'title': 'Binary'.tr,
      'logo': 'https://i.ibb.co/wJ1nJhd/l3.jpg',
      'des': 'Price Starting from 44 descrption more text'.tr,
      'des1': 'Automatic'.tr,
      'des2': '150 Kph'.tr,
      'des3': 'V4'.tr,
      'c': Colorlist3
    },
    {
      'url': 'https://i.ibb.co/4MK4v4b/4.jpg',
      'title': '301'.tr,
      'logo': 'https://i.ibb.co/sCmVsJv/l4.jpg',
      'des': 'Price Starting from 44 descrption more text'.tr,
      'des1': 'Automatic'.tr,
      'des2': '188 Kph'.tr,
      'des3': 'V4'.tr,
      'c': Colorlist4
    },
    {
      'url': 'https://i.ibb.co/BPfGKny/5.jpg',
      'title': 'Arrizo 6'.tr,
      'logo': 'https://i.ibb.co/dJFV76v/l5.jpg',
      'des': 'Price Starting from 44 descrption more text'.tr,
      'des1': 'Automatic'.tr,
      'des2': '180 Kph'.tr,
      'des3': 'V4'.tr,
      'c': Colorlist5
    },
    {
      'url': 'https://i.ibb.co/jZt8jjS/3.jpg',
      'title': 'Elantra'.tr,
      'logo': 'https://i.ibb.co/3YXn9Cp/l1.jpg',
      'des': 'Price Starting from 44 descrption more text'.tr,
      'des1': 'Automatic'.tr,
      'des2': '210 Kph'.tr,
      'des3': 'V4'.tr,
      'c': Colorlist6
    },
  ].obs;
  static RxList<Color> Colorlist1 = [
    Color(0xffbcbcbc),
    Color(0xff898989),
    Color(0xffffffff),
    Color(0xfff43a2e),
    Color(0xff060000),
  ].obs;

  static RxList<Color> Colorlist2 = [
    Color(0xffbcbcbc),
    Color(0xff898989),
    Color(0xfff43a2e),
    Color(0xff060000),
    Color(0xff2c66e1)
  ].obs;

  static RxList<Color> Colorlist3 = [
    Color(0xffbcbcbc),
    Color(0xfff43a2e),
    Color(0xff060000),
    Color(0xff2c66e1),
    Color(0xFFfef200),
  ].obs;

  static RxList<Color> Colorlist4 = [
    Color(0xffbcbcbc),
    Color(0xff898989),
    Color(0xffffffff),
    Color(0xff060000),
    Color(0xff2c66e1),
  ].obs;

  static RxList<Color> Colorlist5 = [
    Color(0xff898989),
    Color(0xffffffff),
    Color(0xfff43a2e),
    Color(0xff060000),
    Color(0xff2c66e1),
  ].obs;
  static RxList<Color> Colorlist6 = [
    Color(0xff898989),
    Color(0xffffffff),
    Color(0xfff43a2e),
    Color(0xff060000),
    Color(0xff2c66e1)
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
