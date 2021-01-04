import 'package:dio/dio.dart';
import 'package:fb_clone_ctg/constant/api_constant.dart';
import 'package:fb_clone_ctg/data/network/network.dart';

class NotificationService {
  Future<Response> getNotification(String token, int index, int count) {
    var queryParameter = {"token": token, "index": index, "count": count};
    return FacebookAPIConnector.instance.dio
        .get(APIConstant.GET_NOTIFICATION, queryParameters: queryParameter);
  }
}
