import 'package:get/get.dart';

import '../controllers/bodytype_details_controller.dart';

class BodytypeDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BodytypeDetailsController>(
      () => BodytypeDetailsController(),
    );
  }
}
