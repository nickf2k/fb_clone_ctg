import 'package:dio/dio.dart';
import 'package:fb_clone_ctg/constant/api_constant.dart';
import 'package:fb_clone_ctg/data/network/network.dart';

class PostService {
  Future<Response> addPost(String token, String described, FormData formData) {
    var queryParam = {"token": token, "described": described, "status": ""};
    return FacebookAPIConnector.instance.dio.post(APIConstant.ADD_POST,
        queryParameters: queryParam, data: formData);
  }

  Future<Response> getPostById(String token, int postId) {
    var queryParam = {
      "token": token,
      "id": postId,
    };
    return FacebookAPIConnector.instance.dio
        .get(APIConstant.GET_POST, queryParameters: queryParam);
  }
  Future<Response> getListPost(String token, String userId, int index, int count){
    var queryParameter = {
      "token":token,
      "user_id":userId,
      "in_campaign": 1,
      "index":index,
      "count": count,
      "campaign_id": 1,
      "latitude": 1,
      "longtitude": 1,
      "last_id": 1

    };
    return FacebookAPIConnector.instance.dio
        .get(APIConstant.GET_LIST_POSTS, queryParameters: queryParameter);
  }
}
