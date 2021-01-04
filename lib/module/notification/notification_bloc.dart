import 'dart:async';

import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/data/repo/notification_repo.dart';
import 'package:fb_clone_ctg/data/service/notification_service.dart';
import 'package:fb_clone_ctg/module/notification/notification_event.dart';
import 'package:fb_clone_ctg/shared/entities/notification_result.dart';
import 'package:fb_clone_ctg/untils/common_utils.dart';
import 'package:fb_clone_ctg/untils/dialog.dart';

class NotificationBloc extends BaseBloc implements INotificationListener{

  NotificationRepo _notificationRepo = NotificationRepo(notificationService: NotificationService());
  StreamController _notificationControler = new StreamController<NotificationResult>();

  Stream get notificationStream => _notificationControler.stream;

  @override
  void dispose() {
    _notificationControler.close();
    // TODO: implement dispose
  }

  @override
  void eventHandle(BaseEvent event) {
    if (event is InitEvent) {
      _notificationRepo.getNotification(0, 15, this);
    }
    }

  @override
  onGetNotificationFailed(String resCode) {
    DialogUtils.showError(CommonUtils.getErrorMessage(resCode), context);
  }

  @override
  onGetNotificationSuccess(NotificationResult notificationResult) {
    _notificationControler.sink.add(notificationResult);
    return null;
  }

}