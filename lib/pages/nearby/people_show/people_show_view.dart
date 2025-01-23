import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openim/pages/nearby/people_show/people_show_logic.dart';
import 'package:openim_common/openim_common.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PeopleShowPage extends StatelessWidget {
  final logic = Get.find<PeopleShowLogic>();

  PeopleShowPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];

    // List<String> listOfUrls = [
    //   "https://cosmosmagazine.com/wp-content/uploads/2020/02/191010_nature.jpg",
    //   "https://tse3-mm.cn.bing.net/th/id/OIP-C.aFrjklyv-Yxl40DFvPIMPwHaGx?w=191&h=175&c=7&r=0&o=5&pid=1.7",
    //   "https://tse1-mm.cn.bing.net/th/id/OIP-C.tFJw1Q3pXNvAkgJslO0f8AHaIl?w=191&h=221&c=7&r=0&o=5&pid=1.7"
    // ];
    final u = UserFullInfo();

    return Scaffold(
      body: Stack(children: [
        CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200.h,
              pinned: true,
              backgroundColor: Colors.blue,
              flexibleSpace: FlexibleSpaceBar(
                background: __buildPhotoShow(u),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Column(
                                children: [
                                  SizedBox(height: 15.h),
                                  __buildProfileShow(u),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                              child: Container(
                                color: const Color.fromARGB(255, 241, 239, 239),
                              ),
                            ),
                            __buildMomentTitle(u),
                          ],
                        ),
                    childCount: 1)),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) => __buildMomentList(u),
            ))
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: _buildBottomDialog(u),
        )
      ]),
    );
  }

  Widget __buildProfileShow(UserFullInfo userInfo) => SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('樟树市是', style: TextStyle(fontSize: 16.sp)),
            SizedBox(height: 10.h),
            _buildTag(userInfo),
            SizedBox(height: 10.h),
            Text("生活是一种态度"),
            SizedBox(height: 5.h)
          ],
        ),
      );

  Widget _buildTag(UserFullInfo userInfo) => Row(
        children: [
          TagView(
            text: "27",
          ),
          SizedBox(width: 2.w),
          TagView(
            text: "爱好",
          ),
          SizedBox(width: 2.w),
          TagView(
            text: "自由职业",
          ),
        ],
      );

  Widget __buildPhotoShow(UserFullInfo userInfo) => SizedBox(
      child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              "https://cosmosmagazine.com/wp-content/uploads/2020/02/191010_nature.jpg",
              fit: BoxFit.cover,
            );
          },
          itemCount: 2,
          pagination: SwiperPagination()));

  Widget __buildMomentTitle(UserFullInfo userInfo) => SizedBox(
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 5.h),
            child: Column(
              children: [
                SizedBox(height: 5.h),
                TagView(
                  text: "动态",
                  fontSize: 14.sp,
                  paddingHorizontal: 10,
                  paddingVertical: 5,
                  backgroundColor: Colors.blue,
                  // fontColor: Colors.black,
                ),
              ],
            )),
      );

  Widget __buildMomentList(UserFullInfo userInfo) => SizedBox(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            '敬请期待',
            style: TextStyle(fontSize: 14.sp),
          ),
        ),
      );

  Widget _buildBottomDialog(UserFullInfo userInfo) => Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Button(
            radius: 10,
            height: 36.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            text: "关注",
            textStyle: TextStyle(fontSize: 14.sp, color: Colors.white),
          ),
          SizedBox(width: 10.w),
          Button(
            radius: 10,
            height: 36.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            text: "打招呼",
            textStyle: TextStyle(fontSize: 14.sp, color: Colors.white),
          ),
        ],
      ));
}
