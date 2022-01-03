import 'package:get/get.dart';

import '../controllers/grid_item_descrptions_details_controller.dart';

class GridItemDescrptionsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GridItemDescrptionsDetailsController>(
      () => GridItemDescrptionsDetailsController(),
    );
  }
}
