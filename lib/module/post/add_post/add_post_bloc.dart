import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/data/repo/post_repo.dart';
import 'package:fb_clone_ctg/data/service/post_service.dart';
import 'package:fb_clone_ctg/module/post/add_post/add_post_event.dart';
import 'package:fb_clone_ctg/module/post/add_post/add_post_view.dart';
import 'package:fb_clone_ctg/shared/entities/add_post_result.dart';
import 'package:flutter/cupertino.dart';

class AddPost extends BaseBloc implements IAddPostListener {
  final postRepo = PostRepo(postService: PostService());

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void eventHandle(BaseEvent event) {
    if (event is AddPostEvent) {
      postRepo.addPost(event.described, event.listFile, event.status, this);
    }
    if (event is PickImagesEvent) {}
    if (event is PickVideoEvent) {}
  }

  @override
  void onAddPostFaild(String code) {
    // TODO: implement onAddPostFaild
  }

  @override
  void onAddPostSuccess(AddPostResult addPostResult) {
    if (addPostResult.code == '1000') {
      Navigator.pushNamed(context, RouteConstant.HOME);
    }
  }
}
