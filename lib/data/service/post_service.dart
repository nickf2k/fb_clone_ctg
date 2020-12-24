import 'dart:html';

import 'package:dio/dio.dart';
import 'package:fb_clone_ctg/constant/api_constant.dart';
import 'package:fb_clone_ctg/data/network/network.dart';

class PostService {
  Future<Response> addPost(String token, String described,FormData formData ) {
    var queryParam = {
      "token": token,
      "described": described,
      "status": ""
    };
    return FacebookAPIConnector.instance.dio.post(APIConstant.ADD_POST, queryParameters: queryParam, data: formData);
  }
  Future<Response> getPostById(String token, String id){
    var queryParam = {
      "token": token,
      "id": id,
    };
    return FacebookAPIConnector.instance.dio.get(APIConstant.ADD_POST, queryParameters: queryParam);
  }
}
