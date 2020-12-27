import 'package:dio/dio.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/data/service/get_post_service.dart';
import 'package:fb_clone_ctg/data/service/post_service.dart';
import 'package:fb_clone_ctg/shared/entities/add_post_result.dart';
import 'package:fb_clone_ctg/shared/entities/get_list_post_result.dart';
import 'package:fb_clone_ctg/shared/entities/get_post_result.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

abstract class IAddPostListener {
  void onAddPostSuccess(AddPostResult addPostResult);

  void onAddPostFaild(String code);
}

abstract class IGetPostListener {
  void onGetPostSuccess(GetListPostResult getListPostResult);

  void onGetPostFaild(String code);
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
    }
    var futures = _service.addPost(token, described, formData).then((res) {
      print(res.data);
      addPostResult = AddPostResult.fromJson(res.data);
      if (addPostResult.code != "1000") {
        listener.onAddPostFaild(addPostResult.code);
        print("loi api, ma loi: " + addPostResult.code);
        return;
      }
      listener.onAddPostSuccess(addPostResult);
      return;
    }).catchError((error) {
      print("add post err: " + error.toString());
      listener.onAddPostFaild(error.toString());
      return;
    });
  }

  void getPostById(String id) {
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);
  }

  void getListPosts() {}
}

class GetPostRepo {
  GetPostRepo({@required GetPostService getPostService})
      : this._getPostService = getPostService;
  GetPostService _getPostService;
  GetListPostResult getListPostResult;
  void getPost(int index, int count, IGetPostListener listener) {
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);

    // SpUtil.getInstance();
    var futureRes =
        _getPostService.getNotification(token, index, count).then((res) async {
      if (getListPostResult.code != "1000") {
        listener.onGetPostFaild(getListPostResult.code);
        return;
      }
      print("get notify success!");
      listener.onGetPostSuccess(getListPostResult);
    }).catchError((error) => print("notify err: " + error.toString()));
  }
}
