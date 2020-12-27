import 'dart:async';

import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/data/repo/post_repo.dart';
import 'package:fb_clone_ctg/data/service/get_post_service.dart';
import 'package:fb_clone_ctg/data/service/post_service.dart';
import 'package:fb_clone_ctg/module/notification/notification_event.dart';
import 'package:fb_clone_ctg/shared/entities/get_list_post_result.dart';
import 'package:fb_clone_ctg/shared/entities/get_post_result.dart';

class GetPostBloc extends BaseBloc implements IGetPostListener {
  GetPostRepo _getPostRepo = GetPostRepo(getPostService: GetPostService());
  StreamController _postController = new StreamController<GetListPostResult>();

  Stream get postStream => _postController.stream;

  @override
  void dispose() {
    _postController.close();
  }

  @override
  void eventHandle(BaseEvent event) {
    if (event is InitEvent) {
      _getPostRepo.getPost(1, 5, this);
    }
  }

  @override
  void onGetPostFaild(String code) {
    return null;
  }

  @override
  void onGetPostSuccess(GetListPostResult getListPostResult) {
    _postController.sink.add(getListPostResult);
    return null;
  }
}
