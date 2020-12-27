import 'package:dio/dio.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/data/service/post_service.dart';
import 'package:fb_clone_ctg/shared/entities/add_post_result.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

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

  Future<void> loadAssets(List<Asset> images, List<Asset> resultList) async {
    images = List<Asset>();
    List<Asset> resultList = List<Asset>();
    String error = 'No Error Dectected';
    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }
    images = resultList;
  }

  void getPostById(String id) {
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);
  }
}
