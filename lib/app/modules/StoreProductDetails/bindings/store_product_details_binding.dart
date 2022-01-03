import 'package:get/get.dart';

import '../controllers/store_product_details_controller.dart';

class StoreProductDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoreProductDetailsController>(
      () => StoreProductDetailsController(),
    );
  }
}
