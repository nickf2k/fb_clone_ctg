import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/data/repo/user_repo.dart';
import 'package:fb_clone_ctg/data/service/user_service.dart';
import 'package:fb_clone_ctg/module/sign_in/sign_in_bloc.dart';
import 'package:fb_clone_ctg/module/sign_in/sign_in_event.dart';
import 'package:fb_clone_ctg/module/sign_up/sign_up_event.dart';
import 'package:fb_clone_ctg/shared/entities/login_result.dart';
import 'package:fb_clone_ctg/untils/common_utils.dart';
import 'package:fb_clone_ctg/untils/dialog.dart';

class SignUpBloc extends BaseBloc implements ISignUpListener {
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
    // TODO: implement onSignUpFailed
    DialogUtils.showError(
         CommonUtils.getErrorMessage(code), context);
  }

  @override
  onCheckSignInSuccess(DataForLogin dataForLogin) {
    // TODO: implement onCheckSignInSuccess
    throw UnimplementedError();
  }

  @override
  onSignUpSuccess(String code, String phone, String pass) {
    if (code == "1000") {
      SignInBloc signInBloc = SignInBloc();
      signInBloc.setContext(this.context);
      signInBloc.eventController.sink
          .add(SignInEvent(phoneNumber: phone, password: pass));
    }
    return null;
  }
}
