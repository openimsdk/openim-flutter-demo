import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:galleryimage/galleryimage.dart';
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
    List<UserFullInfo> userList = [u, u, u];

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.h),
          child: AppBar(
            flexibleSpace: _PhotoShow(userList),
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            _ProfileShow(userList),
            Text('樟树市是')
          ],
        ),
      ),
    );
  }

  Widget _ProfileShow(List<UserFullInfo> userList) => SizedBox();

  Widget _PhotoShow(List<UserFullInfo> userList) => SizedBox(
      child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              userList[index].faceURL.toString(),
              fit: BoxFit.cover,
            );
          },
          itemCount: userList.length,
          pagination: SwiperPagination()));
}
