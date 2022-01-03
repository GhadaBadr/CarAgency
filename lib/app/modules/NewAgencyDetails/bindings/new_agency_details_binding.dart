import 'package:get/get.dart';

import '../controllers/new_agency_details_controller.dart';

class NewAgencyDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewAgencyDetailsController>(
      () => NewAgencyDetailsController(),
    );
  }
}
