import 'package:dio/dio.dart';
import 'package:fb_clone_ctg/constant/api_constant.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';

import '../spref.dart';

class FacebookAPIConnector{
  static BaseOptions _options = new BaseOptions(
    baseUrl: APIConstant.BASE_URL,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  static Dio _dio = Dio(_options);
  Dio get dio => _dio;
  FacebookAPIConnector._internal(){
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (Options myOption) async {
      var token = await SPref.instance.get(SPrefCacheConstant.KEY_TOKEN);
      if (token != null) {
        myOption.headers["Authorization"] = token;
        print(token);
      }

      return myOption;
    }));
  }

  static final FacebookAPIConnector instance = FacebookAPIConnector._internal();



}