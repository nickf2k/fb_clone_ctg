
import 'package:dio/dio.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/data/service/post_service.dart';
import 'package:fb_clone_ctg/shared/entities/add_post_result.dart';
import 'package:fb_clone_ctg/shared/entities/get_list_post_result.dart';
import 'package:fb_clone_ctg/shared/entities/post_result.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

abstract class IAddPostListener {
  void onAddPostSuccess(AddPostResult addPostResult);

  void onAddPostFaild(String code);
}

abstract class IGetPostsListener {
  void onGetPostsSuccess(ListPostResult listPostResult);

  void onGetPostsFaild(String code);
}
abstract class IGetPostListener{
  void onGetPostSuccess(PostResult postResult);

  void onGetPostFaild(String code);
}

class PostRepo {
  PostService _service;

  PostRepo({@required PostService postService}) : this._service = postService;

  Future<void> addPost(String described, List<Asset> listAsset, String status,
      IAddPostListener listener) async {
    AddPostResult addPostResult;
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);
    var formData = FormData();
    if (listAsset.length != 0) {
      for (var asset in listAsset) {
        formData.files.addAll([
          MapEntry("assignment", await convertAssetToFile(asset)),
        ]);
      }
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

  void getPostById(int postId, IGetPostListener listener) {
    PostResult postResult;
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);
    var futures = _service.getPostById(token, postId).then((res) {
      String code = res.data["code"];
      print("get post code: " + code);
      if (code!= "1000"){
        listener.onGetPostFaild(code);
        return;
      }
      postResult = PostResult.fromJson(res.data);
      listener.onGetPostSuccess(postResult);
      return;

    }).catchError((err){
      print("err get post: " + err.toString());
      listener.onGetPostFaild(err.toString());
      return;
    });
  }

  void getListPosts(int index, int count, IGetPostsListener listener) {
    String token = SpUtil.getString(SPrefCacheConstant.KEY_TOKEN);
    int userId = SpUtil.getInt(SPrefCacheConstant.KEY_USER_ID);

    ListPostResult listPostResult;
    var futures = _service.getListPost(token, userId, index, count).then((res) {
      String code = res.data["code"];
      print("list post code: " + code);
      if (code!="1000"){
        listener.onGetPostsFaild(code);
        return;
      }
      listPostResult = ListPostResult.fromJson(res.data);
      listener.onGetPostsSuccess(listPostResult);
      return;
    }).catchError((error){
      print("get list post err: " + error.toString());
      listener.onGetPostsFaild(error.toString());
    });

  }
}


  Future<MultipartFile> convertAssetToFile(Asset asset) async {
    ByteData byteData = await asset.getByteData();
    List<int> imageData = byteData.buffer.asUint8List();
    MultipartFile multipartFile = MultipartFile.fromBytes(
      imageData,
      filename: asset.name,
    );
    return multipartFile;
  }

