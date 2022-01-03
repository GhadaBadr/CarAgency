import 'package:get/get.dart';

import '../controllers/brand_details_controller.dart';

class BrandDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BrandDetailsController>(
      () => BrandDetailsController(),
    );
  }
}
