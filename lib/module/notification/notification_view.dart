import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/data/repo/notification_repo.dart';
import 'package:fb_clone_ctg/module/notification/notification_item.dart';
import 'package:fb_clone_ctg/shared/entities/notification_result.dart';
import 'package:fb_clone_ctg/shared/widgets/search_icon.dart';
import 'package:fb_clone_ctg/shared/widgets/top_nav_bar.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  // TabController _tabController;
  // NotificationResult demoNotification = NotificationResult(
  //     code: "123",
  //     message: "1234",
  //     data: [
  //       "12345",
  //       "65478",
  //       "Ảnh đã đươc thêm thành công",
  //       "34422",
  //       "8373",
  //       "https://znews-photo.zadn.vn/w1920/Uploaded/qhj_yvobvhfwbv/2018_07_18/Nguyen_Huy_Binh1.jpg",
  //       "0",
  //       "1"
  //     ],
  //     lastUpdate: "1234",
  //     badge: "12347");
  List<NotificationResult> listNotify = NotificationResult.getListNotification();

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      navBarIndex: NavBarIndex.NOTIFICATION,
      child: Container(
        // height: 100,
        child: ListView.builder(
          itemBuilder: (context, index) {
            if (index == 0) return getNotificationLabel();
            if (index == 1)
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Text(
                  "Mới",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              );
            return NotiItem(
              notification: listNotify[index - 2],
            );
          },
          itemCount: listNotify.length + 2,
          semanticChildCount: 0,
        ),
      ),
    );
  }

  Widget getNotificationLabel() {
    return Padding(

      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text(
            "Thông báo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.black,
            ),
          ),
          SearchIcon(onPressed: null,size: 25,),

        ],
      ),
    );
  }
}
