import 'package:fb_clone_ctg/module/notification/notification.dart';
import 'package:fb_clone_ctg/module/notification/notification_widget.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  TabController _tabController;
  NotifyObject demoNotification = NotifyObject(
      code: "123",
      message: "1234",
      data: ["12345","65478","Ảnh đã đươc thêm thành công","34422","8373",
        "https://znews-photo.zadn.vn/w1920/Uploaded/qhj_yvobvhfwbv/2018_07_18/Nguyen_Huy_Binh1.jpg","0","1"],
      lastUpdate: "1234",
      badge: "12347"

  );
  List<NotifyObject> listNotify = NotifyObject.getListNotification();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // height: double.infinity,
          child: ListView.builder(itemBuilder: (context, index) {
              return NotiWidget(notification: listNotify[index],);
          },
          itemCount: listNotify.length,),


        ),
      ),
    );
  }
}
