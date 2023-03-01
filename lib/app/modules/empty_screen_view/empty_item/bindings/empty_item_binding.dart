import 'package:get/get.dart';

import '../controllers/empty_item_controller.dart';

class EmptyItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmptyItemController>(
      () => EmptyItemController(),
    );
  }
}
