import 'package:get/get.dart';

import 'nearby_logic.dart';

class NearbyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NearbyLogic());
  }
}
