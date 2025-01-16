import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/controller/im_controller.dart';
import '../../core/controller/push_controller.dart';

class NearLogic extends GetxController {
  final imLogic = Get.find<IMController>();
  final pushLogic = Get.find<PushController>();
  final phoneCtrl = TextEditingController();
  final pwdCtrl = TextEditingController();
  final obscureText = true.obs;
  final enabled = false.obs;
  final areaCode = "+86".obs;
}
