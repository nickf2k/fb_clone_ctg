import 'package:fb_clone_ctg/base/base_event.dart';

class AddFriendEvent extends BaseEvent {}

class RequestedEvent extends BaseEvent {}

class AcceptEvent extends BaseEvent {
  final int userId;
  final int isActive;

  AcceptEvent(this.userId, this.isActive);
}

class GetAllFriendEvent extends BaseEvent {
  final int userId;

  GetAllFriendEvent(this.userId);
}
