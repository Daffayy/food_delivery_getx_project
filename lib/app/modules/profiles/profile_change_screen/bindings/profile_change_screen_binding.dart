import 'package:get/get.dart';

import '../controllers/profile_change_screen_controller.dart';

class ProfileChangeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileChangeScreenController>(
      () => ProfileChangeScreenController(),
    );
  }
}
