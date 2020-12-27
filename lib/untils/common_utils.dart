import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommonUtils {
  // static String formatPriceText(value, {bool hasSymbol = true}) {
  //   FlutterMoneyFormatter formatter = FlutterMoneyFormatter(
  //       amount: double.tryParse(value.toString()),
  //       settings: MoneyFormatterSettings(
  //         symbol: hasSymbol ? ('đ') : '',
  //         thousandSeparator: '.',
  //         decimalSeparator: ',',
  //         fractionDigits: 0,
  //         symbolAndNumberSeparator: '',
  //       ));
  //
  //   return formatter.output.symbolOnRight;
  // }

  static String formatDateTime(value, {formatType = "h:mm a - dd-MM-yyyy"}) {
    try {
      DateTime dateTime = new DateTime.now();

      if (value is String) {
        dateTime = DateTime.parse(value).toLocal();
      } else {
        dateTime = value;
      }
      // DateTime dateTime = DateTime.parse(value);
      DateFormat dateFormat = DateFormat(formatType);
      String formattedDate = dateFormat.format(dateTime);
      return formattedDate;
    } catch (e) {
      print("Parse date error: " + e.toString());
      return '';
    }
  }

  static String timeFromNow(String timeData) {
    DateTime time = DateTime.tryParse(timeData);
    if (time == null)
      time = DateTime.fromMillisecondsSinceEpoch(int.parse(timeData));
    return timeago.format(time).toString();
  }

  static String convertStatus(int value) {
    String statusOrder = '';
    switch (value) {
      case -1:
        statusOrder = 'Đã sẵn sàng';
        break;
      case -2:
        statusOrder = 'Chưa sẵn sàng';
        break;
      case 1:
        statusOrder = 'Đã đặt hàng';
        break;
      case 2:
        statusOrder = 'Đã tiếp nhận';
        break;
      case 3:
        statusOrder = 'Đang vận chuyển';
        break;
      case 4:
        statusOrder = 'Đã giao hàng';
        break;
      case 6:
        statusOrder = 'Giao hàng thất bại';
        break;
      case 7:
        statusOrder = 'Đã hủy';
        break;
      case 8:
        statusOrder = 'Hoàn hàng';
        break;
      default:
    }
    return statusOrder;
  }

  static bool isGuestUser() {
    return SpUtil.getBool(SPrefCacheConstant.KEY_IS_GUEST_USER);
  }
}
