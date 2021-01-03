import 'package:dio/dio.dart';
import 'package:fb_clone_ctg/constant/api_constant.dart';
import 'package:fb_clone_ctg/data/network/network.dart';

class UserService {
  Future<Response> signIn(String phoneNumber, String password) {
    var queryParameter = {"phonenumber": phoneNumber, "password": password};
    return FacebookAPIConnector.instance.dio
        .post(APIConstant.LOGIN, queryParameters: queryParameter);
  }

  Future<Response> signUp(String phoneNumber, String password, String uuid) {
    var queryParameter = {
      "phonenumber": phoneNumber,
      "password": password,
      "uuid": uuid
    };
    return FacebookAPIConnector.instance.dio
        .post(APIConstant.SIGN_UP, queryParameters: queryParameter);
  }

  Future<Response> changeInfo(
      String token, String username, FormData formData) {
    var queryParam = {"token": token, "username": username};
    return FacebookAPIConnector.instance.dio.post(
        APIConstant.CHANGE_INFO_AFTER_SIGNUP,
        queryParameters: queryParam,
        data: formData);
  }

  Future<Response> logout(String token) {
    var queryParameter = {"token": token};
    return FacebookAPIConnector.instance.dio
        .post(APIConstant.LOGOUT, queryParameters: queryParameter);
  }

  Future<Response> getUserInfoById(String token, int userId) {
    var queryParameter = {"token": token, "user_id":userId};
    return FacebookAPIConnector.instance.dio
        .get(APIConstant.GET_USER_INFO, queryParameters: queryParameter);
  }
}
