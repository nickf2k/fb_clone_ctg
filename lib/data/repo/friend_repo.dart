import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/data/repo/notification_repo.dart';
import 'package:fb_clone_ctg/data/service/friend_service.dart';
import 'package:fb_clone_ctg/shared/entities/friend_request_result.dart';
import 'package:fb_clone_ctg/shared/entities/user_friends_result.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/material.dart';

abstract class IGetRequestedListener {
  onGetRequestedSuccess(RequestedFriend result);

  onGetRequestedFailed(String resCode);
}

abstract class IGetUserFriendListener {
  onGetUserFriendsSuccess(UserFriendResult result);

  onGetUserFriendsFailed(String resCode);
}

class FriendRepo {
  FriendService _friendService;

  FriendRepo({@required FriendService frinedService})
      : this._friendService = frinedService;

  void getRequestedFriend(
      int index, int count, IGetRequestedListener listener) {
    RequestedFriend friendRequestResult;
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);

    // SpUtil.getInstance();
    var futureRes = _friendService
        .getRequestedFriend(token, index, count)
        .then((res) async {
      friendRequestResult = RequestedFriend.fromJson(res.data);
      if (friendRequestResult.code != "1000") {
        listener.onGetRequestedFailed(friendRequestResult.code);
        return;
      }
      print("get requested success!");
      listener.onGetRequestedSuccess(friendRequestResult);
      return;
    }).catchError(
            (error) => print("requested friend err: " + error.toString()));
  }

  void setAcceptFriend(int userId, int isAccept, IGetAcceptListener listener) {
    AcceptFriend acceptFriendResult;
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);

    // SpUtil.getInstance();
    var futureRes = _friendService
        .setAcceptFriend(token, userId, isAccept)
        .then((res) async {
      acceptFriendResult = AcceptFriend.fromJson(res.data);
      if (acceptFriendResult.code != "1000") {
        listener.onSetAcceptFailed(acceptFriendResult.code);
        return;
      }
      print("set accept success!");
      listener.onSetAcceptSuccess(acceptFriendResult);
      return;
    }).catchError((error) => print("accept friend err: " + error.toString()));
  }

  void getAllFriends(int userId, IGetUserFriendListener listener) {
    UserFriendResult userFriends;
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);

    // SpUtil.getInstance();
    var futureRes =
        _friendService.getUserFriends(userId, token).then((res) async {
      userFriends = UserFriendResult.fromJson(res.data);
      if (userFriends.code != "1000") {
        listener.onGetUserFriendsFailed(userFriends.code);
        return;
      }
      print("get requested success!");
      listener.onGetUserFriendsSuccess(userFriends);
      return;
    }).catchError((error) {
      print("all friend err: " + error.toString());
      listener.onGetUserFriendsFailed(error.toString());
      return;
    });
  }
}

abstract class IGetAcceptListener {
  onSetAcceptSuccess(AcceptFriend result);

  onSetAcceptFailed(String resCode);
}
