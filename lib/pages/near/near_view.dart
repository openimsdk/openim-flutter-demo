import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:openim/pages/near/near_logic.dart';
import 'package:openim_common/openim_common.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NearPage extends StatelessWidget {
  final logic = Get.find<NearLogic>();

  NearPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];

    final u = UserFullInfo();
    List<UserFullInfo> items = [u];

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
              itemExtent: 100.0,
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
                width: 52.w,
                height: 52.h,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                enabledPreview: true,
                url:
                    "https://tse3-mm.cn.bing.net/th/id/OIP-C.msFXsoMqy2Xm9uV4O5ZFiAHaJQ?w=201&h=251&c=7&r=0&o=5&pid=1.7",
              ),
              SizedBox(width: 10.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "张三身上",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 3,
                            ),
                            child: Text(
                              '健身',
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.white),
                            )),
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(5),
                              right: Radius.circular(5)),
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 3,
                            ),
                            child: Text(
                              '北京',
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.white),
                            )),
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(5),
                              right: Radius.circular(5)),
                          color: Colors.blue,
                        ),
                      )
                    ],
                  )

                  // Row(
                  //   children: [

                  //     Chip(
                  //       label: Text(
                  //         "健身",
                  //         style: TextStyle(fontSize: 14.sp),
                  //       ),
                  //       padding: EdgeInsets.symmetric(
                  //           horizontal: 0.1.h, vertical: 0.1.w),
                  //     )
                  //   ],
                  // )
                ],
              ),
              Spacer(),
              Center(
                child: Text('2.68km | 1小时前'),
              )
            ],
          ),
        ),
      );
  // Widget _buildUserInfoView()=>Slidable(child:Text('view') ,);
}
