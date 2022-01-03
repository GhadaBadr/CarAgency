import 'package:get/get.dart';

import '../controllers/store_all_products_controller.dart';

class StoreAllProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoreAllProductsController>(
      () => StoreAllProductsController(),
    );
  }
}
