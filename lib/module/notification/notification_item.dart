import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/config/app_color.dart';
import 'package:fb_clone_ctg/constant/notify_constant.dart';
import 'package:fb_clone_ctg/shared/entities/notification.dart';
import 'package:flutter/material.dart';

class NotiItem extends StatelessWidget {
  final NotifyObject notification;

  const NotiItem({Key key, this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = notification.data;
    //data [7] = read;
    var color =
        data[7] == NotifyConstant.READER ? Colors.white : Color(0xffe7f3ff);
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
                  backgroundImage: NetworkImage(
                    data[5],
                  ),
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
                      data[2],
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(),
                    ),
                  ),
                  Text(
                    data[4],
                    maxLines: 1,
                    style: TextStyle(color: AppColor.textGrey),
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex: 1, child: Icon(Icons.more_horiz)),
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
}
