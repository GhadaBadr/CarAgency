import 'package:get/get.dart';

import '../controllers/new_agency_item_details_controller.dart';

class NewAgencyItemDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewAgencyItemDetailsController>(
      () => NewAgencyItemDetailsController(),
    );
  }
}
