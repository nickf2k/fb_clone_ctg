// import 'package:dio/dio.dart';
// import 'package:mc_book/with_bloc/constant/status_code_constant.dart';
// import 'package:mc_book/with_bloc/shared/model/res_error.dart';
//
// class ErrorUtils {
//   static RestError handleError(error) {
//     DioError dioError = error as DioError;
//     var errorMsg = "Connection Error";
//     if (dioError.response != null &&
//         dioError.response.statusCode ==
//             StatusCodeConstant.AUTHENTICATION_FAILED) {
//       errorMsg = "Thong tin dang nhap khong chinh xac";
//     }
//     return RestError.fromData(errorMsg);
//   }
// }
