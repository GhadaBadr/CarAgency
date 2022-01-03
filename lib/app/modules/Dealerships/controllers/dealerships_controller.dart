// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class DealershipsController extends GetxController {
  final count = 0.obs;
  final carlist = [
    {'id': 0, 'title': 'Sedan'.tr, 'url': "https://i.ibb.co/JCYzt3C/car3.png"},
    {'id': 1, 'title': 'SUV'.tr, 'url': "https://i.ibb.co/JCYzt3C/car3.png"},
    {
      'id': 2,
      'title': 'Hatchback'.tr,
      'url': "https://i.ibb.co/JCYzt3C/car3.png"
    },
    {'id': 3, 'title': 'Coupe'.tr, 'url': "https://i.ibb.co/JCYzt3C/car3.png"},
    {
      'id': 4,
      'title': 'Convertible'.tr,
      'url': "https://i.ibb.co/JCYzt3C/car3.png"
    },
    {
      'id': 5,
      'title': 'Sportback'.tr,
      'url': "https://i.ibb.co/JCYzt3C/car3.png"
    },
    {'id': 6, 'title': 'Pickup'.tr, 'url': "https://i.ibb.co/JCYzt3C/car3.png"},
    {'id': 7, 'title': 'Van'.tr, 'url': "https://i.ibb.co/JCYzt3C/car3.png"},
    {
      'id': 8,
      'title': 'Crossover'.tr,
      'url': "https://i.ibb.co/JCYzt3C/car3.png"
    },
    {'id': 9, 'title': 'MIcro'.tr, 'url': "https://i.ibb.co/JCYzt3C/car3.png"},
    {'id': 10, 'title': 'Sport'.tr, 'url': "https://i.ibb.co/JCYzt3C/car3.png"},
    {'id': 11, 'title': 'Wagon'.tr, 'url': "https://i.ibb.co/JCYzt3C/car3.png"},
    {
      'id': 12,
      'title': 'Heavy Duty'.tr,
      'url': "https://i.ibb.co/JCYzt3C/car3.png"
    },
  ].obs;
  final brandlist = [
    {'url': "https://i.ibb.co/zmsBQ51/bmw.jpg"},
    {'url': "https://i.ibb.co/HhGVYPQ/landrover.jpg"},
    {'url': "https://i.ibb.co/KWFVb8n/mini.jpg"},
    {'url': "https://i.ibb.co/b17FgxN/geely.jpg"},
    {'url': "https://i.ibb.co/8mWnB21/dodge.jpg"},
    {'url': "https://i.ibb.co/W3VP7jY/jeep.jpg"},
    {'url': "https://i.ibb.co/z2qhsZG/ram.jpg"},
    {'url': "https://i.ibb.co/FwG76jz/abarth.jpg"},
    {'url': "https://i.ibb.co/MMpd1Jb/3.png"},
    {'url': "https://i.ibb.co/Sn4Gskc/4.png"},
    {'url': "https://i.ibb.co/T8Nn0cg/5.png"},
  ].obs;
  final newagency = [
    {
      'url': 'https://i.ibb.co/B6RVJPk/22.png',
      'title': '4 series'.tr,
      'des': 'Starting from'.tr,
      'dess': '18750 KD'.tr
    },
    {
      'url': 'https://i.ibb.co/Fs8bBzr/11.png',
      'title': 'Defender 110'.tr,
      'des': 'Starting from'.tr,
      'dess': '19550 KD'.tr
    },
    {
      'url': 'https://i.ibb.co/B6RVJPk/22.png',
      'title': '4 series'.tr,
      'des': 'Starting from'.tr,
      'dess': '18750 KD'.tr
    },
    {
      'url': 'https://i.ibb.co/Fs8bBzr/11.png',
      'title': 'Defender 110'.tr,
      'des': 'Starting from'.tr,
      'dess': '19550 KD'.tr
    },
  ].obs;
  final videolist = [
    {
      'url': 'https://i.ibb.co/hcv3Hck/003.png',
      'title': 'Defender 2021'.tr,
      'link': 'https://youtu.be/pk5QL_kKN_g'
    },
    {
      'url': 'https://i.ibb.co/hcv3Hck/003.png',
      'title': 'Defender 2021'.tr,
      'link': 'https://youtu.be/pk5QL_kKN_g'
    },
    {
      'url': 'https://i.ibb.co/hcv3Hck/003.png',
      'title': 'Defender 2021'.tr,
      'link': 'https://youtu.be/pk5QL_kKN_g'
    },
    {
      'url': 'https://i.ibb.co/hcv3Hck/003.png',
      'title': 'Defender 2021'.tr,
      'link': 'https://youtu.be/pk5QL_kKN_g'
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
  void increment() => count.value++;
}
