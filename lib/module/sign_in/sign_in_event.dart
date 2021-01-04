import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:flutter/cupertino.dart';

class SignInEvent extends BaseEvent {
  final String phoneNumber;
  final String password;

  SignInEvent({@required this.phoneNumber, @required this.password});
}
