import 'package:fb_clone_ctg/base/base_event.dart';

class SignUpEvent extends BaseEvent{
  final String phoneNumber;
  final String password;

  SignUpEvent(this.phoneNumber, this.password);
}