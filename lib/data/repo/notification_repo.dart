import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/data/service/notification_service.dart';
import 'package:fb_clone_ctg/shared/entities/login_result.dart';
import 'package:fb_clone_ctg/shared/entities/notification_result.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/material.dart';

abstract class INotificationListener {
  onGetNotificationSuccess(NotificationResult notificationResult);

  onGetNotificationFailed(String resCode);
}

class NotificationRepo {
  NotificationService _notificationService;
  NotificationResult notificationResult;

  NotificationRepo({@required NotificationService notificationService})
      : this._notificationService = notificationService;

  void getNotification(int index, int count, INotificationListener listener) {
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);
    // SpUtil.getInstance();
    var futureRes = _notificationService
        .getNotification(token, index, count)
        .then((res) async {
      notificationResult = NotificationResult.fromJson(res.data);
      if (notificationResult.code != "1000") {
        listener.onGetNotificationFailed(notificationResult.code);
        return;
      }
      print("get notify success!");
      listener.onGetNotificationSuccess(notificationResult);
    }).catchError((error) => print("notify err: " + error.toString()));
  }
}

// class NotificationResult {
// }
