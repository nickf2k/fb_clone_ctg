import 'dart:io';

import 'package:fb_clone_ctg/base/base_event.dart';

class ChangeInfoEvent extends BaseEvent {
  final File avatarFile;
  final String name;

  ChangeInfoEvent({this.avatarFile, this.name});
}
