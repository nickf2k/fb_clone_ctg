import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/data/repo/user_repo.dart';
import 'package:fb_clone_ctg/data/service/user_service.dart';
import 'package:fb_clone_ctg/module/setting/setting_event.dart';
import 'package:flutter/cupertino.dart';

class SettingBloc extends BaseBloc implements ILogoutListener {
  UserRepo _userRepo = UserRepo(userService: UserService());

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void eventHandle(BaseEvent event) {
    if (event is LogoutEvent) {
      _userRepo.logout(this);
    }
    // TODO: implement eventHandle
  }

  @override
  onLogoutSuccess(bool checkLogout) {
    // TODO: implement onLogoutSuccess
    if (checkLogout)
      Navigator.of(context).pushReplacementNamed(RouteConstant.SIGN_IN);
    return null;
  }
}
