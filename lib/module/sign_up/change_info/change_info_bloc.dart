import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/data/repo/user_repo.dart';
import 'package:fb_clone_ctg/data/service/user_service.dart';
import 'package:fb_clone_ctg/module/sign_in/sign_in_bloc.dart';
import 'package:fb_clone_ctg/module/sign_in/sign_in_event.dart';
import 'package:fb_clone_ctg/module/sign_up/change_info/change_info_event.dart';
import 'package:fb_clone_ctg/untils/common_utils.dart';
import 'package:fb_clone_ctg/untils/dialog.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';

class ChangeInfoBloc extends BaseBloc implements IChangeInfoListener {
  UserRepo _userRepo = UserRepo(userService: UserService());

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void eventHandle(BaseEvent event) {
    if (event is ChangeInfoEvent) {
      _userRepo.changeUserInfo(event.name, event.avatarFile, this);
    }
  }

  @override
  onChangeInfoFail(String code) {
    // TODO: implement onChangeInfoFail
    DialogUtils.showError(CommonUtils.getErrorMessage(code), context);
  }

  @override
  onChangeInfoSuccess(String code) {
    // TODO: implement onChangeInfoSuccess
    if (code == "1000") {
      SignInBloc signInBloc = SignInBloc();
      signInBloc.setContext(this.context);
      String phone = SpUtil.getString(SPrefCacheConstant.KEY_USERNAME);
      String pass = SpUtil.getString(SPrefCacheConstant.KEY_PASSWORD);

      signInBloc.eventController.sink
          .add(SignInEvent(phoneNumber: phone, password: pass));
    }
  }
}
