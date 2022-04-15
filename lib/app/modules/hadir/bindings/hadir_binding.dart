import 'package:get/get.dart';

import '../controllers/hadir_controller.dart';

class HadirBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HadirController>(
      () => HadirController(),
    );
  }
}
