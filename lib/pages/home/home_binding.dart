import 'package:get/get.dart';
import 'package:openim/pages/near/near_logic.dart';

import '../contacts/contacts_logic.dart';
import '../conversation/conversation_logic.dart';
import '../mine/mine_logic.dart';
import 'home_logic.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NearLogic());
    Get.lazyPut(() => HomeLogic());
    Get.lazyPut(() => ConversationLogic());
    Get.lazyPut(() => ContactsLogic());
    Get.lazyPut(() => MineLogic());
  }
}
