import 'package:fb_clone_ctg/data/service/notification_service.dart';
import 'package:fb_clone_ctg/shared/entities/login_result.dart';
import 'package:fb_clone_ctg/shared/entities/notification_result.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/material.dart';

abstract class NotificationListener{
  onGetNotificationSuccess (NotificationResult notificationResult);
  onGetNotificationFailed (String resCode);
}
class NotificationRepo{
  NotificationService _notificationService;
  NotificationRepo({@required NotificationService notificationService})
      : this._notificationService = notificationService;
  void getNotification(String token, int index, int count, NotificationListener listener){

    NotificationResult notificationResult;

    SpUtil.getInstance();
    var futureRes = _notificationService.getNotification(token, index, count).then((
        res) async {
      notificationResult = NotificationResult.fromJson(res.data);
      if (notificationResult.code != "1000") {
        listener.onGetNotificationFailed(notificationResult.code);
        return;
      }
      print("User actived!");
    }).catchError((error) => print("login err: " + error.toString()));
  }
}

// class NotificationResult {
// }