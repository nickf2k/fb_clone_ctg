import 'package:dio/dio.dart';
import 'package:fb_clone_ctg/constant/api_constant.dart';
import 'package:fb_clone_ctg/data/network/network.dart';

class FriendService{
  Future<Response> getRequestedFriend(String token, int index, int count){
    var queryParameter = {
      "token": token,
      "index": index,
      "count": count
    };
    return FacebookAPIConnector.instance.dio
        .get(APIConstant.GET_REQUESTED_FRIENDS, queryParameters: queryParameter);
  }
  Future<Response> getUserFriends(int id, String token){
    var queryParameter = {
      "id": id,
      "token": token,
      "index": 0,
      "count": 20
    };
    return FacebookAPIConnector.instance.dio
        .get(APIConstant.GET_USER_FRIENDS, queryParameters: queryParameter);
  }
  Future<Response> setAcceptFriend(String token, int userId, int isAccept){
    var queryParameter = {
      "token": token,
      "userId": userId,
      "isAccept": isAccept
    };
    return FacebookAPIConnector.instance.dio
        .post(APIConstant.SET_ACCEPT_FRIEND, queryParameters: queryParameter);
  }


}