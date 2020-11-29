
import 'dart:async';




class SignInBloc {
  StreamController _userController = new StreamController();
  StreamController _passController = new StreamController();

  Stream get userStream => _userController.stream; // viết tắt của cái dưới
  Stream get passStream => _passController.stream;

//  Stream getUserStream(){
//    return _userController.stream;
//  }

  bool isValidInfo(String userName, String pass){

  }
 void dispose(){
    _userController.close();
    _passController.close();
 }
}