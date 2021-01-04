import 'dart:async';

import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:flutter/cupertino.dart';

abstract class BaseBloc<T extends BaseEvent> {
  BuildContext context;
  StreamController eventController = new StreamController<BaseEvent>();

  Stream get _eventStream => eventController.stream;

  BaseBloc() {
    _eventStream.listen((event) {
      eventHandle(event);
    });
  }

  void dispose();

  void eventHandle(BaseEvent event);

  void setContext(BuildContext context) {
    this.context = context;
  }
}
