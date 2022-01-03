import 'package:get/get.dart';

import '../controllers/services_grid_item_details_controller.dart';

class ServicesGridItemDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServicesGridItemDetailsController>(
      () => ServicesGridItemDetailsController(),
    );
  }
}
