import 'dart:async';

import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/data/repo/user_repo.dart';
import 'package:fb_clone_ctg/data/service/user_service.dart';
import 'package:fb_clone_ctg/module/sign_in/sign_in_event.dart';
import 'package:fb_clone_ctg/shared/entities/login_result.dart';
import 'package:fb_clone_ctg/shared/entities/sigin_data.dart';
import 'package:flutter/cupertino.dart';

class SignInBloc extends BaseBloc implements ISignInListener {
  UserRepo _userRepo = UserRepo(userService: UserService());
  StreamController _loginController = new StreamController<LoginResult>();
  StreamController _userController = new StreamController();
  StreamController _passController = new StreamController();
  StreamController _signInController = StreamController<SignInData>();

  Stream get loginStream => _loginController.stream;

  Stream get userStream => _userController.stream; // viết tắt của cái dưới
  Stream get passStream => _passController.stream;

  Stream get signInStream => _signInController.stream;

//  Stream getUserStream(){
//    return _userController.stream;
//  }

  bool isValidInfo(String userName, String pass) {}

  @override
  void dispose() {
    _loginController.close();
    _userController.close();
    _passController.close();
  }

  @override
  void eventHandle(BaseEvent event) {
    if (event is SignInEvent) {
      _userRepo.signIn(event.phoneNumber, event.password, this);
    }
  }

  @override
  onCheckSignInSuccess(DataForLogin dataForLogin) {
    // TODO: implement onCheckSignInSuccess
    // throw UnimplementedError();
    return null;
  }

  @override
  onSignInFailed(String resCode) {
    // TODO: implement onSignInFailed
    // throw UnimplementedError();
    return null;
  }

  @override
  onSignInSuccess(LoginResult loginResult) {
    // TODO: implement onSignInSuccess
    _loginController.sink.add(loginResult);
    if (loginResult.code == "1000") {
      Navigator.pushReplacementNamed(context, RouteConstant.HOME,
          result: false);
    }
    return null;
  }
}
