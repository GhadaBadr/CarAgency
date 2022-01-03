// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class BrandDetailsController extends GetxController {
  final count = 0.obs;
  final RxList deslist = [
    {
      'url': 'http://pngimg.com/uploads/bmw_logo/bmw_logo_PNG19707.png',
      'title': 'BMW'.tr,
      'des': '   Ali Alghanim and Sons Auto motive Company'.tr,
      'logo': 'https://i.ibb.co/FBSLyjk/ali.jpg'
    },
    {
      'url': 'https://pngimg.com/uploads/land_rover/land_rover_PNG1.png',
      'title': 'Land Rover'.tr,
      'des': '   Ali Alghanim and Sons Auto motive Company'.tr,
      'logo': 'https://i.ibb.co/FBSLyjk/ali.jpg'
    },
    {
      'url':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/MINI_logo.svg/1280px-MINI_logo.svg.png',
      'title': 'Mini Cooper'.tr,
      'des': '   Ali Alghanim and Sons Auto motive Company'.tr,
      'logo': 'https://i.ibb.co/FBSLyjk/ali.jpg'
    },
    {
      'url':
          'https://upload.wikimedia.org/wikipedia/ar/thumb/d/d4/Geely_logo.svg/1200px-Geely_logo.svg.png',
      'title': 'Geely'.tr,
      'des': '   Ali Alghanim and Sons Auto motive Company'.tr,
      'logo': 'https://i.ibb.co/FBSLyjk/ali.jpg'
    },
    {
      'url':
          'https://s3-eu-west-1.amazonaws.com/yc-wp-sites/car-deals/wp-content/uploads/sites/6/2019/05/02085442/dodge.png',
      'title': 'Dodge'.tr,
      'des': '   Al Mulla & Behbehani Motor Company'.tr,
      'logo': 'https://i.ibb.co/dDw6YH2/almulla.jpg'
    },
    {
      'url':
          'https://purepng.com/public/uploads/large/purepng.com-jeepjeepautomobilesamerican-automobilesfiat-chrysler-automobiles-1701527488632anja6.png',
      'title': 'Jeep'.tr,
      'des': '   Al Mulla & Behbehani Motor Company'.tr,
      'logo': 'https://i.ibb.co/dDw6YH2/almulla.jpg'
    },
    {
      'url': 'http://assets.stickpng.com/images/585acc014f6ae202fedf294f.png',
      'title': 'RAM'.tr,
      'des': '   Al Mulla & Behbehani Motor Company'.tr,
      'logo': 'https://i.ibb.co/dDw6YH2/almulla.jpg'
    },
    {
      'url': 'http://assets.stickpng.com/images/580b585b2edbce24c47b2c5e.png',
      'title': 'Fiat'.tr,
      'des': '   Al Mulla & Behbehani Motor Company'.tr,
      'logo': 'https://i.ibb.co/dDw6YH2/almulla.jpg'
    },
    {
      'url':
          'https://www.pikpng.com/pngl/b/344-3448336_abarth-logo-png-fiat-abarth-500-logo-clipart.png',
      'title': 'Abarth'.tr,
      'des': '   Al Mulla & Behbehani Motor Company'.tr,
      'logo': 'https://i.ibb.co/dDw6YH2/almulla.jpg'
    }
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
