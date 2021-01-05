import 'package:fb_clone_ctg/base/base_bloc.dart';
import 'package:fb_clone_ctg/base/base_event.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/data/repo/post_repo.dart';
import 'package:fb_clone_ctg/data/service/post_service.dart';
import 'package:fb_clone_ctg/module/post/add_post/add_post_event.dart';
import 'package:fb_clone_ctg/shared/entities/add_post_result.dart';
import 'package:fb_clone_ctg/untils/common_utils.dart';
import 'package:fb_clone_ctg/untils/dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class AddPostBloc extends BaseBloc implements IAddPostListener {
  final postRepo = PostRepo(postService: PostService());

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void eventHandle(BaseEvent event) {
    if (event is AddPostEvent) {
      print("event added!");
      postRepo.addPost(event.described, event.listAsset, event.status, this);
    }
    if (event is PickImagesEvent) {
      // postRepo.loadAssets(event.images, event.resultList);
    }
    if (event is PickVideoEvent) {}
  }

  @override
  void onAddPostFaild(String code) {
    // DialogUtils.showError(CommonUtils.getErrorMessage(code), context);
  }

  @override
  void onAddPostSuccess(AddPostResult addPostResult) {
    if (addPostResult.code == '1000') {
      print("add post success");
      Navigator.pushNamed(context, RouteConstant.HOME);
    }
  }
}
