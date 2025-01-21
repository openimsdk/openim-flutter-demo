import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openim/pages/near/near_logic.dart';
import 'package:openim_common/openim_common.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class NearPage extends StatelessWidget {
  final logic = Get.find<NearLogic>();

  NearPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];

    final u = UserInfo();
    List<UserInfo> items = [u];

    return Scaffold(
        appBar: AppBar(
          title: Text("附近人"),
        ),
        body: Column(children: [
          Expanded(
              child: SmartRefresher(
            header: IMViews.buildHeader(),
            footer: IMViews.buildFooter(),
            onRefresh: logic.onRefresh,
            onLoading: logic.onLoading,
            controller: logic.refreshController,
            child: ListView.builder(
              itemBuilder: (c, i) => items[i],
              itemExtent: 100.0,
              itemCount: items.length,
            ),
          ))
        ]));
  }
}

class UserInfo extends StatelessWidget {
  UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text("user1")],
    );
  }
}
