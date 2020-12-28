import 'dart:async';

import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/data/repo/post_repo.dart';
import 'package:fb_clone_ctg/data/service/post_service.dart';
import 'package:fb_clone_ctg/module/post/get_post/get_post_event.dart';
import 'package:fb_clone_ctg/shared/entities/get_list_post_result.dart';
import 'package:fb_clone_ctg/shared/entities/get_post_result.dart';

class GetPostsBloc extends BaseBloc implements IGetPostsListener {
  StreamController _listPostCtrl = new StreamController<ListPostResult>();
  PostRepo _postRepo = PostRepo(postService: PostService());
  Stream get postsStream => _listPostCtrl.stream;

  @override
  void dispose() {
    _listPostCtrl.close();
  }

  @override
  void eventHandle(BaseEvent event) {
    if (event is InitEvent) {
      _postRepo.getListPosts(0, 10, this);
    }
  }

  @override
  void onGetPostFaild(String code) {
    return null;
  }

  @override
  void onGetPostSuccess(ListPostResult getListPostResult) {
    _listPostCtrl.sink.add(getListPostResult);
    return null;
  }
}
