import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../controllers/search_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Logger().d("Binding init");
    Get.lazyPut<SearchControllerPage>(
      () => SearchControllerPage(),
    );
  }
}
