import 'package:fb_clone_ctg/base/base_event.dart';

class AddPostEvent extends BaseEvent {
  final String described;
  final List<String> listFile;
  final String status;

  AddPostEvent(this.described, this.listFile, this.status);
}

class PickImagesEvent extends BaseEvent {}

class PickVideoEvent extends BaseEvent {}
