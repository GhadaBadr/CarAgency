import 'package:get/get.dart';

import '../controllers/dealerships_controller.dart';

class DealershipsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DealershipsController>(
      () => DealershipsController(),
    );
  }
}
