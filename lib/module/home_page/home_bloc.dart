import 'dart:async';

import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/data/repo/post_repo.dart';
import 'package:fb_clone_ctg/data/service/post_service.dart';
import 'package:fb_clone_ctg/module/home_page/home_event.dart';
import 'package:fb_clone_ctg/shared/entities/get_list_post_result.dart';
import 'package:fb_clone_ctg/untils/common_utils.dart';
import 'package:fb_clone_ctg/untils/dialog.dart';

class HomeBloc extends BaseBloc implements IGetPostsListener {
  PostRepo _postRepo = PostRepo(postService: PostService());
  StreamController listIdPostCtrl = StreamController<List<int>>();

  Stream get listIdPostStream => listIdPostCtrl.stream;

  @override
  void dispose() {
    listIdPostCtrl.close();
  }

  @override
  void eventHandle(BaseEvent event) {
    if (event is InitHomeEvent) {
      _postRepo.getListPosts(0, 10, this);
    }
  }

  @override
  void onGetPostsFaild(String code) {
    DialogUtils.showError(CommonUtils.getErrorMessage(code), context);
  }

  @override
  void onGetPostsSuccess(ListPostResult listPostResult) {
    listIdPostCtrl.sink.add(listPostResult.getListIdPost());
  }
}
