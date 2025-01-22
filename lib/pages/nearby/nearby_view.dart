import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:openim/pages/nearby/nearby_logic.dart';
import 'package:openim_common/openim_common.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NearbyPage extends StatelessWidget {
  final logic = Get.find<NearbyLogic>();

  NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];

    final u = UserFullInfo();
    List<UserFullInfo> items = [u, u, u];

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
              itemBuilder: (c, i) => _buildUserListView(items[i]),
              itemExtent: 65.0.h,
              itemCount: items.length,
            ),
          ))
        ]));
  }

  Widget _buildUserListView(UserFullInfo user) => Slidable(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              AvatarView(
                width: 50.w,
                height: 50.h,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                enabledPreview: true,
                url:
                    "https://tse3-mm.cn.bing.net/th/id/OIP-C.msFXsoMqy2Xm9uV4O5ZFiAHaJQ?w=201&h=251&c=7&r=0&o=5&pid=1.7",
              ),
              SizedBox(width: 14.w),
              Expanded(
                child: InkWell(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "张三身上",
                              style: TextStyle(fontSize: 14.sp),
                            ),
                            Row(
                              children: [_buildUserInfoTag(user)],
                            ),
                            Text(
                              "爱我所爱",
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          ],
                        ),
                        Center(
                          child: Text('2.68km | 1小时前'),
                        )
                      ]),
                  onTap: logic.toPeopleShow,
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildUserInfoTag(UserFullInfo user) => Row(
        children: [
          Container(
            child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 3,
                ),
                child: Text(
                  '健身',
                  style: TextStyle(fontSize: 12.sp, color: Colors.white),
                )),
            margin: EdgeInsets.all(1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(5), right: Radius.circular(5)),
              color: const Color.fromARGB(255, 206, 157, 173),
            ),
          ),
          Container(
            child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 3,
                ),
                child: Text(
                  '北京',
                  style: TextStyle(fontSize: 12.sp, color: Colors.white),
                )),
            margin: EdgeInsets.all(1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(5), right: Radius.circular(5)),
              color: const Color.fromARGB(255, 206, 157, 173),
            ),
          )
        ],
      );
}
