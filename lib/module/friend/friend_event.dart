import 'package:fb_clone_ctg/base/base_event.dart';

class AddFriendEvent extends BaseEvent {}

class RequestedEvent extends BaseEvent {}

class AcceptEvent extends BaseEvent {
  final int userId;
  final int isActive;

  AcceptEvent(this.userId, this.isActive);
}
<<<<<<< HEAD

class GetAllFriendEvent extends BaseEvent {
  final int userId;

  GetAllFriendEvent(this.userId);
}
=======
class GetAllFriendEvent extends BaseEvent{
  final int userId;

  GetAllFriendEvent(this.userId);
}
>>>>>>> c21167428c47d4ba0429a1228cfef1c550716508
