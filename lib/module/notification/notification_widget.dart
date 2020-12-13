import 'package:fb_clone_ctg/module/notification/notification.dart';
import 'package:fb_clone_ctg/module/notification/notify_constant.dart';
import 'package:flutter/material.dart';

class NotiWidget extends StatelessWidget {
  final NotifyObject notification ;

  const NotiWidget({Key key, this.notification}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var data = notification.data;
    //data [7] = read;
    var color = data[7]==NotifyConstant.READER?Colors.white:Color(0xffe7f3ff);
    return Container(
      decoration: BoxDecoration(
        color: color
      ),
      child: ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(data[5]),radius: 40,),// index 5 la ava
        title: Text(data[2],
        style: TextStyle(

        ),),
        trailing: Icon(Icons.more_vert),
        subtitle: Text(data[4]),
      ),
    );
  }
}
