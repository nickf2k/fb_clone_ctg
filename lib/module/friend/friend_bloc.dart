import 'dart:async';
import 'package:fb_clone_ctg/shared/entities/user_friends_result.dart';
import 'package:fb_clone_ctg/untils/common_utils.dart';
import 'package:fb_clone_ctg/untils/dialog.dart';
import 'package:flutter/material.dart';
import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/data/service/friend_service.dart';
import 'package:fb_clone_ctg/data/repo/friend_repo.dart';
import 'package:fb_clone_ctg/module/notification/notification_event.dart';
import 'package:fb_clone_ctg/shared/entities/friend_request_result.dart';
import '../friend/friend_event.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';

class FriendBloc extends BaseBloc
    implements
        IGetRequestedListener,
        IGetAcceptListener,
        IGetUserFriendListener {
  FriendRepo _friendRepo = FriendRepo(frinedService: FriendService());
  StreamController _requestedController =
      new StreamController<RequestedFriend>();

  StreamController allFriendCtrl = new StreamController<UserFriendResult>();

  Stream get requestedStream => _requestedController.stream;

  @override
  void dispose() {
    _requestedController.close();
    allFriendCtrl.close();
    // TODO: implement dispose
  }

  @override
  void eventHandle(BaseEvent event) {
    if (event is RequestedEvent) {
      _friendRepo.getRequestedFriend(0, 15, this);
    }
    if (event is AcceptEvent) {
      _friendRepo.setAcceptFriend(event.userId, event.isActive, this);
    }
    if (event is GetAllFriendEvent) {
      _friendRepo.getAllFriends(event.userId, this);
    }
    // TODO: implement eventHandle
  }

  @override
  onGetRequestedFailed(String resCode) {
    // TODO: implement onGetFriendFailed
    return null;
  }

  @override
  onGetRequestedSuccess(RequestedFriend result) {
    if (result.code == "1000") {
      _requestedController.sink.add(result);
    }
    // TODO: implement onGetFriendSuccess
    return null;
  }

  @override
  onSetAcceptFailed(String resCode) {
    // TODO: implement onGetAcceptFailed
    return null;
  }

  @override
  onSetAcceptSuccess(AcceptFriend result) {
    // TODO: implement onGetAcceptSuccess
    if (result.code == "1000") {
      Navigator.of(context).pushNamed(RouteConstant.REQUESTED_FRIEND);
    }
    return null;
  }

  @override
  onGetUserFriendsFailed(String resCode) {
    // TODO: implement onGetUserFriendsFailed
    DialogUtils.showError(CommonUtils.getErrorMessage(resCode), context);
  }

  @override
  onGetUserFriendsSuccess(UserFriendResult result) {
    allFriendCtrl.sink.add(result);
  }
}
