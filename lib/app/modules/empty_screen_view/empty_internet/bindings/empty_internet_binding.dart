import 'package:get/get.dart';

import '../controllers/empty_internet_controller.dart';

class EmptyInternetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmptyInternetController>(
      () => EmptyInternetController(),
    );
  }
}
