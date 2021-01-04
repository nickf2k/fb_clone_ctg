import 'dart:async';

import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/data/repo/post_repo.dart';
import 'package:fb_clone_ctg/data/repo/user_repo.dart';
import 'package:fb_clone_ctg/data/service/post_service.dart';
import 'package:fb_clone_ctg/data/service/user_service.dart';
import 'package:fb_clone_ctg/module/post/post/post_event.dart';
import 'package:fb_clone_ctg/shared/entities/get_list_post_result.dart';
import 'package:fb_clone_ctg/shared/entities/post_result.dart';
import 'package:fb_clone_ctg/shared/entities/user_result.dart';
import 'package:fb_clone_ctg/untils/common_utils.dart';
import 'package:fb_clone_ctg/untils/dialog.dart';

class PostBloc extends BaseBloc implements IGetPostListener {
  StreamController postController = new StreamController<PostResult>();
  PostRepo _postRepo = PostRepo(postService: PostService());
  Stream get postStream => postController.stream;

  @override
  void dispose() {
    postController.close();
  }

  @override
  void eventHandle(BaseEvent event) {
    if (event is InitEvent) {
      _postRepo.getPostById(event.postId, this);
    }
  }

  @override
  void onGetPostFaild(String code) {
    DialogUtils.showError(CommonUtils.getErrorMessage(code), context);
  }

  @override
  void onGetPostSuccess(PostResult postResult) {
    postController.sink.add(postResult);
  }

}
