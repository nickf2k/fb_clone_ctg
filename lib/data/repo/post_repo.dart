import 'package:dio/dio.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/data/service/post_service.dart';
import 'package:fb_clone_ctg/shared/entities/add_post_result.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/material.dart';

abstract class IAddPostListener {
  void onAddPostSuccess(AddPostResult addPostResult);

  void onAddPostFaild(String code);
}

class PostRepo {
  PostService _service;

  PostRepo({@required PostService postService}) : this._service = postService;

  Future<void> addPost(String described, List<String> listFile, String status,
      IAddPostListener listener) async {
    AddPostResult addPostResult;
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);
    var formData = FormData();
    for (var file in listFile) {
      formData.files.addAll([
        MapEntry("assignment", await MultipartFile.fromFile(file)),
      ]);
      var futures = _service.addPost(token, described, formData).then((res) {
        addPostResult = res.data;
        if (addPostResult.code != "1000")
          listener.onAddPostFaild(addPostResult.code);
      }).catchError((error) {
        print("add post err: " + error);
        listener.onAddPostFaild(error.toString());
      });
      listener.onAddPostSuccess(addPostResult);
    }
  }
  void getPostById(String id){
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);
  }
}
