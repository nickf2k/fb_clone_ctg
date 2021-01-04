import 'dart:async';

import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/data/repo/user_repo.dart';
import 'package:fb_clone_ctg/data/service/user_service.dart';
import 'package:fb_clone_ctg/module/profile/profile_event.dart';
import 'package:fb_clone_ctg/shared/entities/user_result.dart';
import 'package:fb_clone_ctg/untils/common_utils.dart';
import 'package:fb_clone_ctg/untils/dialog.dart';

class ProfileBloc extends BaseBloc implements IGetUserInfoListener{
  UserRepo _userRepo = UserRepo(userService: UserService());
  StreamController userCtrl = StreamController<User>();
  Stream get userStream => userCtrl.stream;
  @override
  void dispose() {
    userCtrl.close();
  }

  @override
  void eventHandle(BaseEvent event) {
    if (event is InitEvent){
      _userRepo.getUserById(event.userId, this);
    }
  }

  @override
  onGetInfoFailed(String code) {
    // TODO: implement onGetInfoFailed
    DialogUtils.showError(CommonUtils.getErrorMessage(code), context);
  }

  @override
  onGetInfoSuccess(User user) {
    userCtrl.sink.add(user);
  }

}