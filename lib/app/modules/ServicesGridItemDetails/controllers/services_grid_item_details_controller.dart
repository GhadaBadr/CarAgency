// ignore_for_file: unnecessary_overrides, non_constant_identifier_names

import 'package:get/get.dart';

class ServicesGridItemDetailsController extends GetxController {
  final count = 0.obs;
  RxInt index = 0.obs;
  final RxList list = [
    {'url': 'https://i.ibb.co/d4ps47d/salon.png', 'title': 'Sedan'.tr, 'i': 0},
    {
      'url': 'https://i.ibb.co/frXy2BF/small-Jeep.png',
      'title': 'SUV'.tr,
      'i': 1
    },
    {
      'url': 'https://i.ibb.co/wgNFRQH/large-Jeep.png',
      'title': 'Large SUV'.tr,
      'i': 2
    }
  ].obs;
  final RxList Des0 = [
    {
      'title': 'Wash'.tr,
      'des':
          'Strat your week with a fresh clean carBody Wash Interior Vacuum, Strat your week with a fresh clean carBody Wash Interior Vacuum'
              .tr,
      'price': '7.750 KD'.tr
    },
    {
      'title': 'Shine'.tr,
      'des':
          'Once in a while, pamper your car and give it a shiny lookBody Wash pamper your car and give it a shiny lookBody Wash'
              .tr,
      'price': '20.000 KD'.tr
    },
    {
      'title': 'Detailing'.tr,
      'des':
          'Make your car look a new again by giving it a full interior and exterior Make your car look a new again by giving it a full interior and exterior'
              .tr,
      'price': '40.000 KD'.tr
    }
  ].obs;
  final RxList Des1 = [
    {
      'title': 'Detailing'.tr,
      'des':
          'Make your car look a new again by giving it a full interior and exterior Make your car look a new again by giving it a full interior and exterior'
              .tr,
      'price': '40.000 KD'.tr
    },
    {
      'title': 'Wash'.tr,
      'des':
          'Strat your week with a fresh clean carBody Wash Interior Vacuum, Strat your week with a fresh clean carBody Wash Interior Vacuum'
              .tr,
      'price': '7.750 KD'.tr
    },
    {
      'title': 'Shine'.tr,
      'des':
          'Once in a while, pamper your car and give it a shiny lookBody Wash pamper your car and give it a shiny lookBody Wash'
              .tr,
      'price': '20.000 KD'.tr
    },
    {
      'title': 'Detailing'.tr,
      'des':
          'Make your car look a new again by giving it a full interior and exterior Make your car look a new again by giving it a full interior and exterior'
              .tr,
      'price': '40.000 KD'.tr
    },
    {
      'title': 'Wash'.tr,
      'des':
          'Strat your week with a fresh clean carBody Wash Interior Vacuum, Strat your week with a fresh clean carBody Wash Interior Vacuum'
              .tr,
      'price': '7.750 KD'.tr
    },
    {
      'title': 'Shine'.tr,
      'des':
          'Once in a while, pamper your car and give it a shiny lookBody Wash pamper your car and give it a shiny lookBody Wash'
              .tr,
      'price': '20.000 KD'.tr
    },
    {
      'title': 'Detailing'.tr,
      'des':
          'Make your car look a new again by giving it a full interior and exterior Make your car look a new again by giving it a full interior and exterior'
              .tr,
      'price': '40.000 KD'.tr
    },
    {
      'title': 'Detailing'.tr,
      'des':
          'Make your car look a new again by giving it a full interior and exterior Make your car look a new again by giving it a full interior and exterior'
              .tr,
      'price': '40.000 KD'.tr
    }
  ].obs;
  final RxList Des2 = [
    {
      'title': 'Shine'.tr,
      'des':
          'Once in a while, pamper your car and give it a shiny lookBody Wash pamper your car and give it a shiny lookBody Wash'
              .tr,
      'price': '20.000 KD'.tr
    },
    {
      'title': 'Detailing'.tr,
      'des':
          'Make your car look a new again by giving it a full interior and exterior Make your car look a new again by giving it a full interior and exterior'
              .tr,
      'price': '40.000 KD'.tr
    },
    {
      'title': 'Wash'.tr,
      'des':
          'Strat your week with a fresh clean carBody Wash Interior Vacuum, Strat your week with a fresh clean carBody Wash Interior Vacuum'
              .tr,
      'price': '7.750 KD'.tr
    },
    {
      'title': 'Detailing'.tr,
      'des':
          'Make your car look a new again by giving it a full interior and exterior Make your car look a new again by giving it a full interior and exterior'
              .tr,
      'price': '40.000 KD'.tr
    },
    {
      'title': 'Wash'.tr,
      'des':
          'Strat your week with a fresh clean carBody Wash Interior Vacuum, Strat your week with a fresh clean carBody Wash Interior Vacuum'
              .tr,
      'price': '7.750 KD'.tr
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
