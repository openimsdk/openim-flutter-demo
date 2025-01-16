import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openim/pages/near/near_logic.dart';

class NearPage extends StatelessWidget {
  final logic = Get.find<NearLogic>();

  NearPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("附近人"),
      ),
      body: Text('11'),
    );
  }
}
