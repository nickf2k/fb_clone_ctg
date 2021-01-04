import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/data/repo/user_repo.dart';
import 'package:fb_clone_ctg/data/service/user_service.dart';
import 'package:fb_clone_ctg/module/sign_in/sign_in_bloc.dart';
import 'package:fb_clone_ctg/module/sign_in/sign_in_event.dart';
import 'package:fb_clone_ctg/module/sign_up/sign_up_event.dart';
import 'package:fb_clone_ctg/shared/entities/login_result.dart';
import 'package:fb_clone_ctg/untils/common_utils.dart';
import 'package:fb_clone_ctg/untils/dialog.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/cupertino.dart';

class SignUpBloc extends BaseBloc implements ISignUpListener, ISignInListener {
  UserRepo _userRepo = UserRepo(userService: UserService());

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void eventHandle(BaseEvent event) {
    if (event is SignUpEvent) {
      _userRepo.signUp(event.phoneNumber, event.password, this);
    }
    // TODO: implement eventHandle
  }

  @override
  onSignUpFailed(String code) {
    DialogUtils.showError(CommonUtils.getErrorMessage(code), context);
  }

  @override
  onCheckSignInSuccess(DataForLogin dataForLogin) {
    return null;
  }

  @override
  onSignUpSuccess(String code, String phone, String pass) {
    if (code == "1000") {
      _userRepo.signIn(phone, pass, this);
      SpUtil.putString(SPrefCacheConstant.KEY_USER, phone);
      SpUtil.putString(SPrefCacheConstant.KEY_PASSWORD, pass);
      Navigator.pushNamed(context, RouteConstant.CHANGE_INFO);
    }
    return null;
  }

  @override
  onSignInFailed(String resCode) {
    return null;
  }

  @override
  onSignInSuccess(LoginResult loginResult) {
    return null;
  }
}
