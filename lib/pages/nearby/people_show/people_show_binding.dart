import 'package:get/get.dart';
import 'package:openim/pages/nearby/people_show/people_show_logic.dart';

class PeopleShowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PeopleShowLogic());
  }
}
