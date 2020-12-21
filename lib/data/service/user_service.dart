import 'package:dio/dio.dart';
import 'package:fb_clone_ctg/constant/api_constant.dart';
import 'package:fb_clone_ctg/data/network/network.dart';

class UserService{
  Future<Response> signIn(String phoneNumber, String password) {
    var queryParameter = {
      "phonenumber": phoneNumber,
      "password": password
    };
    return FacebookAPIConnector.instance.dio.post(APIConstant.LOGIN,queryParameters: queryParameter);
  }

}