import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/data/service/user_service.dart';
import 'package:fb_clone_ctg/shared/entities/login_result.dart';
import 'package:fb_clone_ctg/shared/entities/saved_search.dart';
import 'package:fb_clone_ctg/shared/entities/user_result.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

abstract class ISignInListener {
  onSignInSuccess(LoginResult loginResult);

  onCheckSignInSuccess(DataForLogin dataForLogin);

  onSignInFailed(String resCode);
}

abstract class IGetUserInfoListener {
  onGetInfoSuccess(User user);

  onGetInfoFailed(String code);
}

abstract class IChangeInfoListener {
  onChangeInfoSuccess(String code);

  onChangeInfoFail(String code);
}

abstract class ILogoutListener {
  onLogoutSuccess(bool checkLogout);
}

abstract class ISearchListener {
  onSearchPressed(SavedSearchList savedSearchList);
}

abstract class ISignUpListener {
  onSignUpSuccess(String code, String phone, String pass);

  onSignUpFailed(String code);
}

abstract class IGetUsersListener {
  onGetUsersSuccess(List<User> users);

  onGetUserFailed(String code);
}

class UserRepo {
  UserService _userService;

  UserRepo({@required UserService userService})
      : this._userService = userService;

  void signIn(
      String phoneNumber, String password, ISignInListener listener) async {
    LoginResult loginResult;
    // UserData userData = UserData(avatar: null, displayName: 'aaaa', token: '92839189');
    // signInListener.onSignInSuccess(userData);
    SpUtil.getInstance();
    var futureRes =
        await _userService.signIn(phoneNumber, password).then((res) async {
      String code = res.data["code"];
      print("login code: " + code);
      if (code != "1000") {
        listener.onSignInFailed(code);
        return;
      }
      loginResult = LoginResult.fromJson(res.data);
      print("User actived!");
      DataForLogin userData = loginResult.data;
      print("token: " + userData.token);
      SpUtil.putString(SPrefCacheConstant.KEY_TOKEN, userData.token);
      SpUtil.putString(SPrefCacheConstant.KEY_USERNAME, userData.username);

      SpUtil.putInt(SPrefCacheConstant.KEY_USER_ID, userData.id);
      SpUtil.putString(SPrefCacheConstant.KEY_USER, phoneNumber);
      SpUtil.putString(SPrefCacheConstant.KEY_AVATAR_URL, userData.avatar);
      SpUtil.putString(SPrefCacheConstant.KEY_PASSWORD, password);
      listener.onSignInSuccess(loginResult);
    }).catchError((error) {
      print("login err: " + error.toString());
      return;
    });

    // set cache user
    // var resUser = _userService.getUserInfo(userData.userId);
    // resUser.then((res) async {
    //   SpUtil.putObject(SPrefCacheConstant.KEY_USER, res.data);
    // });
  }

  void getSavedSearch(int index, int count, ISearchListener listener) {
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);
    // var futures =
    //     _userService.getSavedSearch(token, index, count).then((response) async {
    //   SavedSearchList savedSearchList;
    //   SpUtil.getInstance();
    //   savedSearchList = SavedSearchList.fromJson(response.data);
    // });
  }

  void logout(ILogoutListener listener) {
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);

    var futures = _userService.logout(token).then((res) {
      print("logouted!");
      listener.onLogoutSuccess(true);
    }).catchError((error) {
      print("logout err");
      listener.onLogoutSuccess(false);
    });
    SpUtil.remove(SPrefCacheConstant.KEY_TOKEN);
    SpUtil.remove(SPrefCacheConstant.KEY_USER_ID);
    SpUtil.remove(SPrefCacheConstant.KEY_USERNAME);
    SpUtil.remove(SPrefCacheConstant.KEY_PASSWORD);
    SpUtil.remove(SPrefCacheConstant.KEY_AVATAR_URL);
    SpUtil.remove(SPrefCacheConstant.KEY_USER);
  }

  void signUp(String phoneNumber, String password, ISignUpListener listener) {
    String uuid = Uuid().v1();
    var futureRes =
        _userService.signUp(phoneNumber, password, uuid).then((res) async {
      String code = res.data["code"];
      print('code: ' + code);
      if (code != "1000") {
        listener.onSignUpFailed(code);
        return;
      }
      print("Signuped");
      listener.onSignUpSuccess(code, phoneNumber, password);
      return;
    }).catchError((error) => print("signup err: " + error.toString()));
  }

  Future<void> changeUserInfo(
      String name, File avatarFile, IChangeInfoListener listener) async {
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);

    FormData formData = FormData();
    formData.files.addAll([
      MapEntry("avatar", await MultipartFile.fromFile(avatarFile.path)),
    ]);
    var futureRes =
        _userService.changeInfo(token, name, formData).then((res) async {
      String code = res.data["code"];
      print('code change info: ' + code);
      if (code != "1000") {
        listener.onChangeInfoFail(code);
        return;
      }
      print("changed info!");
      listener.onChangeInfoSuccess(code);
      return;
    }).catchError((error) => print("change info err: " + error.toString()));
  }

  void getUserById(int userId, IGetUserInfoListener listener) {
    UserResult userResult;
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);

    var futures = _userService.getUserInfoById(token, userId).then((res) {
      String code = res.data["code"];
      print("code get user by id " + code);
      if (code != "1000") {
        listener.onGetInfoFailed(code);
        return;
      }
      userResult = UserResult.fromJson(res.data);
      listener.onGetInfoSuccess(userResult.user);
      return;
    }).catchError((err) {
      print("err get user by id: " + err.toString());
      return;
    });
  }

  void getListUserByListId(List<int> listId, IGetUsersListener listener) {
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);

    List<User> listUser = [];
    String code;
    for (int id in listId) {
      var futures = _userService.getUserInfoById(token, id).then((res) {
        code = res.data["code"];
        if (code != "1000") {
          listUser.add(User.getDefault());
          print("user default was added");
          return;
        }
        listUser.add(UserResult.fromJson(res.data).user);
        return;
      }).catchError((err) {
        print("err get list user");
      });
    }
  }
}
