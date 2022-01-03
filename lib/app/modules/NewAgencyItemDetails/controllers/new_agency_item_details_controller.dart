// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewAgencyItemDetailsController extends GetxController {
  final count = 0.obs;

  RxInt index = 0.obs;
  RxInt ind = 0.obs;
  RxInt indexx = 0.obs;

  final RxList listbutton = [
    {'title': '4201 COUPE M SPORT'.tr, 'i': 0},
    {'title': '4301 COUPE M SPORT'.tr, 'i': 1}
  ].obs;
  final RxList listGrid1 = [
    {'url': 'lib/Assets/icon/1.svg', 'des': '121 HP'.tr},
    {'url': 'lib/Assets/icon/2.svg', 'des': 'V4'.tr},
    {'url': 'lib/Assets/icon/3.svg', 'des': '4'.tr},
    {'url': 'lib/Assets/icon/4.svg', 'des': '15 INCH'.tr},
    {'url': 'lib/Assets/icon/5.svg', 'des': '210 Kph'.tr},
    {'url': 'lib/Assets/icon/6.svg', 'des': 'Automatic'.tr}
  ].obs;
  final RxList listGrid2 = [
    {'url': 'lib/Assets/icon/1.svg', 'des': '150 HP'.tr},
    {'url': 'lib/Assets/icon/2.svg', 'des': 'V4'.tr},
    {'url': 'lib/Assets/icon/3.svg', 'des': '4'.tr},
    {'url': 'lib/Assets/icon/4.svg', 'des': '20 INCH'.tr},
    {'url': 'lib/Assets/icon/5.svg', 'des': '200 Kph'.tr},
    {'url': 'lib/Assets/icon/6.svg', 'des': 'Automatic'.tr}
  ].obs;

  final RxList colorlist = [
    {
      'c': Color(0xffffffff),
      'i': 0,
    },
    {'c': Color(0xfff43a2e), 'i': 1},
    {
      'c': Color(0xff060000),
      'i': 2,
    },
    {
      'c': Color(0xff2c66e1),
      'i': 3,
    },
    {
      'c': Color(0xFFfef200),
      'i': 4,
    },
  ].obs;
  final url1 = 'https://i.ibb.co/LZTLGyj/white.png'.obs;
  final url2 = 'https://i.ibb.co/W6X6459/red.png'.obs;
  final url3 = 'https://i.ibb.co/D4NFCBz/dark.png'.obs;
  final url4 = 'https://i.ibb.co/k1jCWJc/blue.png'.obs;
  final url5 = 'https://i.ibb.co/brjzcwQ/yellow.png'.obs;

  final RxList listbutton2 = [
    {'title': 'Quick Main Facts'.tr, 'i': 0},
    {'title': 'Interior Details'.tr, 'i': 1},
    {'title': 'Exterior Details'.tr, 'i': 2},
    {'title': 'Engine Details'.tr, 'i': 3},
    {'title': 'Fuel Efficiens'.tr, 'i': 4},
  ].obs;

  final RxList quickMainFacts = [
    {'title': 'Brand'.tr, 'des': 'Hyundal'.tr},
    {'title': 'Model'.tr, 'des': 'Accent'.tr},
    {'title': 'Model Year'.tr, 'des': '2021'.tr},
    {'title': 'Tirm'.tr, 'des': 'HCI-Basic 1.4L'.tr},
    {'title': 'Model Body'.tr, 'des': 'Sedan'.tr},
    {'title': 'Engine'.tr, 'des': '1.6 Liter'.tr},
    {'title': 'Engine Type'.tr, 'des': 'Gasoline'.tr},
    {'title': 'Seating Capacity'.tr, 'des': '4'.tr},
    {'title': 'Doors'.tr, 'des': '4'.tr},
    {'title': 'Country of Origin'.tr, 'des': 'China'.tr},
  ].obs;
  final RxList interiorDetails = [
    {'title': 'Model Body'.tr, 'des': 'Sedan'.tr},
    {'title': 'Engine'.tr, 'des': '1.6 Liter'.tr},
    {'title': 'Engine Type'.tr, 'des': 'Gasoline'.tr},
    {'title': 'Seating Capacity'.tr, 'des': '4'.tr},
    {'title': 'Doors'.tr, 'des': '4'.tr},
    {'title': 'Country of Origin'.tr, 'des': 'China'.tr},
    {'title': 'Brand'.tr, 'des': 'Hyundal'.tr},
    {'title': 'Model'.tr, 'des': 'Accent'.tr},
    {'title': 'Model Year'.tr, 'des': '2021'.tr},
    {'title': 'Tirm'.tr, 'des': 'HCI-Basic 1.4L'.tr},
  ].obs;

  final RxList exteriorDetails = [
    {'title': 'Doors'.tr, 'des': '4'.tr},
    {'title': 'Country of Origin'.tr, 'des': 'China'.tr},
    {'title': 'Brand'.tr, 'des': 'Hyundal'.tr},
    {'title': 'Model'.tr, 'des': 'Accent'.tr},
    {'title': 'Model Year'.tr, 'des': '2021'.tr},
    {'title': 'Tirm'.tr, 'des': 'HCI-Basic 1.4L'.tr},
    {'title': 'Model Body'.tr, 'des': 'Sedan'.tr},
    {'title': 'Engine'.tr, 'des': '1.6 Liter'.tr},
    {'title': 'Engine Type'.tr, 'des': 'Gasoline'.tr},
    {'title': 'Seating Capacity'.tr, 'des': '4'.tr},
  ].obs;

  final RxList engineDetails = [
    {'title': 'Engine'.tr, 'des': '1.6 Liter'.tr},
    {'title': 'Engine Type'.tr, 'des': 'Gasoline'.tr},
    {'title': 'Brand'.tr, 'des': 'Hyundal'.tr},
    {'title': 'Model'.tr, 'des': 'Accent'.tr},
    {'title': 'Model Year'.tr, 'des': '2021'.tr},
    {'title': 'Tirm'.tr, 'des': 'HCI-Basic 1.4L'.tr},
    {'title': 'Model Body'.tr, 'des': 'Sedan'.tr},
    {'title': 'Seating Capacity'.tr, 'des': '4'.tr},
    {'title': 'Doors'.tr, 'des': '4'.tr},
    {'title': 'Country of Origin'.tr, 'des': 'China'.tr},
  ].obs;

  final RxList fuelEfficiens = [
    {'title': 'Doors'.tr, 'des': '4'.tr},
    {'title': 'Country of Origin'.tr, 'des': 'China'.tr},
    {'title': 'Engine Type'.tr, 'des': 'Gasoline'.tr},
    {'title': 'Brand'.tr, 'des': 'Hyundal'.tr},
    {'title': 'Model'.tr, 'des': 'Accent'.tr},
    {'title': 'Model Year'.tr, 'des': '2021'.tr},
    {'title': 'Tirm'.tr, 'des': 'HCI-Basic 1.4L'.tr},
    {'title': 'Engine'.tr, 'des': '1.6 Liter'.tr},
    {'title': 'Model Body'.tr, 'des': 'Sedan'.tr},
    {'title': 'Seating Capacity'.tr, 'des': '4'.tr},
  ].obs;

  final RxList gridButtons = [
    {'url': 'lib/Assets/icon/booking2.svg', 'title': 'Test Driver'.tr},
    {'url': 'lib/Assets/icon/booking1.svg', 'title': 'Car Loan'.tr},
    {'url': 'lib/Assets/icon/booking4.svg', 'title': 'Reserve Car'.tr},
    {'url': 'lib/Assets/icon/Valuation.svg', 'title': 'Valuation Request'.tr},
    {'url': 'lib/Assets/icon/booking3.svg', 'title': 'Reserve Car Services'.tr},
  ].obs;
  final imagesList = [
    'https://i.ibb.co/C6vVx0F/add.png',
    'https://i.ibb.co/nrNRfY5/33.png',
    'https://i.ibb.co/B6RVJPk/22.png',
    'https://i.ibb.co/Fs8bBzr/11.png'
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
