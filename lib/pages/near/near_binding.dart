import 'package:get/get.dart';

import 'near_logic.dart';

class NearBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NearLogic());
  }
}
