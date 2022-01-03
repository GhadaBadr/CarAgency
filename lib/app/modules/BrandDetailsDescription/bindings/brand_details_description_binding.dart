import 'package:get/get.dart';

import '../controllers/brand_details_description_controller.dart';

class BrandDetailsDescriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BrandDetailsDescriptionController>(
      () => BrandDetailsDescriptionController(),
    );
  }
}
