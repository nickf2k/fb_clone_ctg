import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/config/app_color.dart';
import 'package:fb_clone_ctg/constant/notify_constant.dart';
import 'package:fb_clone_ctg/data/repo/notification_repo.dart';
import 'package:fb_clone_ctg/shared/entities/notification_result.dart';

import 'package:flutter/material.dart';

class NotiItem extends StatelessWidget {
  final MyNotification notification;

  const NotiItem({Key key, this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //data [7] = read;
    var color =
        notification.isRead == NotifyConstant.READER ? Colors.white : Color(0xffe7f3ff);
    return Container(
      decoration: BoxDecoration(color: color),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              // color: Colors.blue,
              // margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CircleAvatar(
                  maxRadius: 35,
                  // radius: 40,
                  backgroundImage: notification.avatar!=null?NetworkImage(
                    notification.avatar,
                  ):NetworkImage("https://i.pinimg.com/originals/0e/3a/02/0e3a0209ebf915f34279ac867bd2ea26.jpg"),
                  // radius: 35,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      notification.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(),
                    ),
                  ),
                  Text(
                    notification.createdAt,
                    maxLines: 1,
                    style: TextStyle(color: AppColor.textGrey),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      builder: (context) {
                        return Container(
                          height: 270,
                          decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: bottomSheetContent(
                              imageUrl: notification.avatar??"https://i.pinimg.com/originals/0e/3a/02/0e3a0209ebf915f34279ac867bd2ea26.jpg",
                              title: notification.description),
                        );
                      });
                },
              )),
        ],
      ),
      // child: ListTile(
      //   leading: CircleAvatar(
      //     backgroundImage: NetworkImage(data[5]),
      //     radius: 52,
      //   ),
      //   // index 5 la ava
      //   title: Text(
      //     data[2],
      //     maxLines: 3,
      //     overflow: TextOverflow.ellipsis,
      //     style: TextStyle(),
      //   ),
      //   trailing: Icon(Icons.more_horiz),
      //   subtitle: Text(data[4], maxLines: 3,),
      // ),
    );
  }

  bottomSheetContent({String imageUrl, String title, int type}) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CircleAvatar(
              maxRadius: 30,
              // radius: 40,
              backgroundImage: NetworkImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              title,
              maxLines: 1,
              style: TextStyle(color: AppColor.textGrey),
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: Center(
                          child: Icon(
                        Icons.delete_forever,
                        color: AppColor.darkGray,
                        size: 30,
                      ))),
                  Expanded(
                    flex: 8,
                    child: Text("Gỡ thông báo này"),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: Center(
                          child: Icon(
                        Icons.save_alt,
                        color: AppColor.darkGray,
                        size: 30,
                      ))),
                  Expanded(
                    flex: 8,
                    child: Text("Lưu bài viết"),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: Center(
                          child: Icon(
                        Icons.event,
                        color: AppColor.darkGray,
                        size: 30,
                      ))),
                  Expanded(
                    flex: 8,
                    child: Text(
                        "Chỉ nhận thông báo về bài viết của bạn bè trong nhóm này"),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
