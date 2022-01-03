import 'package:get/get.dart';

import '../controllers/bodytype_details_description_controller.dart';

class BodytypeDetailsDescriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BodytypeDetailsDescriptionController>(
      () => BodytypeDetailsDescriptionController(),
    );
  }
}
