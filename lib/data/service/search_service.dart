import 'package:dio/dio.dart';
import 'package:fb_clone_ctg/constant/api_constant.dart';
import 'package:fb_clone_ctg/data/network/network.dart';

class SearchService{
  Future<Response> getSavedSearch(String token, int index, int count){
    var queryParameter = {
      "token": token,
      "index": index,
      "count": count
    };
    return FacebookAPIConnector.instance.dio
        .post(APIConstant.GET_SAVED_SEARCH, queryParameters: queryParameter);
  }
}