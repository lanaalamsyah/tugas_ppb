import 'package:get/get.dart';

import '../controllers/sakit_controller.dart';

class SakitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SakitController>(
      () => SakitController(),
    );
  }
}
