// ignore_for_file: unnecessary_overrides, non_constant_identifier_names

import 'package:get/get.dart';

class ServicesController extends GetxController {
  final count = 0.obs;
  RxInt index = 0.obs;
  final RxList list = [
    {'url': 'https://i.ibb.co/h9ssqXQ/ser1.png', 'title': 'Wash'.tr, 'i': 0},
    {
      'url': 'https://i.ibb.co/2tpB4f5/ser3.png',
      'title': 'Maintenance'.tr,
      'i': 1
    },
    {
      'url': 'https://i.ibb.co/SwSwQBz/ser2.png',
      'title': 'Tinting & Processing'.tr,
      'i': 2
    },
    {
      'url': 'https://i.ibb.co/NjfVtrH/ser4.png',
      'title': 'Glass Repair'.tr,
      'i': 3
    },
    {'url': 'https://i.ibb.co/jJ6ZMy8/ser5.png', 'title': 'Wash'.tr, 'i': 4},
    {
      'url': 'https://i.ibb.co/VJL0S7n/ser6.png',
      'title': 'Maintenance'.tr,
      'i': 5
    },
  ].obs;
  final RxList ServicesGridlist0 = [
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {
      'url': 'https://i.ibb.co/VCytGp5/service1.png',
      'title': 'Sonax Car Car'.tr
    },
    {'url': 'https://i.ibb.co/pQSTCQK/service2.png', 'title': 'Shine Clean'.tr},
    {'url': 'https://i.ibb.co/VBvVDjB/service3.png', 'title': 'Scrub'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Royal Wash'.tr},
    {
      'url': 'https://i.ibb.co/9Y4KTb8/service0.png',
      'title': 'Dalel Sayart Car'.tr
    },
    {'url': 'https://i.ibb.co/pQSTCQK/service2.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/VBvVDjB/service3.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr}
  ].obs;

  final RxList ServicesGridlist1 = [
    {'url': 'https://i.ibb.co/pQSTCQK/service2.png', 'title': 'Shine Clean'.tr},
    {'url': 'https://i.ibb.co/VBvVDjB/service3.png', 'title': 'Scrub'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Royal Wash'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {
      'url': 'https://i.ibb.co/VCytGp5/service1.png',
      'title': 'Sonax Car Car'.tr
    },
    {
      'url': 'https://i.ibb.co/9Y4KTb8/service0.png',
      'title': 'Dalel Sayart Car'.tr
    },
    {'url': 'https://i.ibb.co/pQSTCQK/service2.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/VBvVDjB/service3.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr}
  ].obs;

  final RxList ServicesGridlist2 = [
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Royal Wash'.tr},
    {
      'url': 'https://i.ibb.co/9Y4KTb8/service0.png',
      'title': 'Dalel Sayart Car'.tr
    },
    {'url': 'https://i.ibb.co/pQSTCQK/service2.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/VBvVDjB/service3.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {
      'url': 'https://i.ibb.co/VCytGp5/service1.png',
      'title': 'Sonax Car Car'.tr
    },
    {'url': 'https://i.ibb.co/pQSTCQK/service2.png', 'title': 'Shine Clean'.tr},
    {'url': 'https://i.ibb.co/VBvVDjB/service3.png', 'title': 'Scrub'.tr},
  ].obs;
  final RxList ServicesGridlist3 = [
    {
      'url': 'https://i.ibb.co/9Y4KTb8/service0.png',
      'title': 'Dalel Sayart Car'.tr
    },
    {'url': 'https://i.ibb.co/pQSTCQK/service2.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/VBvVDjB/service3.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/pQSTCQK/service2.png', 'title': 'Shine Clean'.tr},
    {'url': 'https://i.ibb.co/VBvVDjB/service3.png', 'title': 'Scrub'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Royal Wash'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {
      'url': 'https://i.ibb.co/VCytGp5/service1.png',
      'title': 'Sonax Car Car'.tr
    },
  ].obs;
  final RxList ServicesGridlist4 = [
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {
      'url': 'https://i.ibb.co/VCytGp5/service1.png',
      'title': 'Sonax Car Car'.tr
    },
    {'url': 'https://i.ibb.co/pQSTCQK/service2.png', 'title': 'Shine Clean'.tr},
    {
      'url': 'https://i.ibb.co/9Y4KTb8/service0.png',
      'title': 'Dalel Sayart Car'.tr
    },
    {'url': 'https://i.ibb.co/pQSTCQK/service2.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/VBvVDjB/service3.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/VBvVDjB/service3.png', 'title': 'Scrub'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Royal Wash'.tr},
  ].obs;
  final RxList ServicesGridlist5 = [
    {
      'url': 'https://i.ibb.co/9Y4KTb8/service0.png',
      'title': 'Dalel Sayart Car'.tr
    },
    {'url': 'https://i.ibb.co/pQSTCQK/service2.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/VBvVDjB/service3.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Car Spa'.tr},
    {
      'url': 'https://i.ibb.co/VCytGp5/service1.png',
      'title': 'Sonax Car Car'.tr
    },
    {'url': 'https://i.ibb.co/pQSTCQK/service2.png', 'title': 'Shine Clean'.tr},
    {'url': 'https://i.ibb.co/VBvVDjB/service3.png', 'title': 'Scrub'.tr},
    {'url': 'https://i.ibb.co/9Y4KTb8/service0.png', 'title': 'Royal Wash'.tr},
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
