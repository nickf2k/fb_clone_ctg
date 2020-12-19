import 'package:fb_clone_ctg/constant/notify_constant.dart';
import 'package:fb_clone_ctg/shared/entities/notification.dart';
import 'package:flutter/material.dart';

class NotiWidget extends StatelessWidget {
  final NotifyObject notification;

  const NotiWidget({Key key, this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = notification.data;
    //data [7] = read;
    var color =
        data[7] == NotifyConstant.READER ? Colors.white : Color(0xffe7f3ff);
    return Container(
      decoration: BoxDecoration(color: color),
      // child: AppBar(
      //   title: Text("Thông báo"),
      //   actions: <Widget>[IconButton(icon: se, onPressed: null)],
      //
      // ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(data[5]),
          radius: 52,
        ),
        // index 5 la ava
        title: Text(
          data[2],
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(),
        ),
        trailing: Icon(Icons.more_horiz),
        subtitle: Text(data[4], maxLines: 3,),
      ),
    );
  }
}
