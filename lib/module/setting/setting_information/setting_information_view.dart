import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:flutter/material.dart';

class SettingInformationPage extends StatefulWidget {
  @override
  _SettingInformationPageState createState() => _SettingInformationPageState();
}

class _SettingInformationPageState extends State<SettingInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 25, 0, 0),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 30,
              color: Colors.black,
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
            child: Divider(
              thickness: 3,
              color: Colors.black12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 15),
            child: Text(
              "Thông tin cá nhân",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Text(
              "Chung",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _get_buttonSettingInFo("Tên", "Phạm Tuấn Nghĩa", null),
          _get_buttonSettingInFo(
              "Bảo mật", "Đổi mật khẩu", RouteConstant.CHANGE_PASSWORD),
          _get_buttonSettingInFo("Thông tin liên hệ",
              "Quản lý số điện thoại và email của bạn", null),
          _get_buttonSettingInFo("Xác nhận danh tính",
              "Xác nhận danh tính của bạn trên Facebook", null),
          _get_buttonSettingInFo("Quản lý tài khoản",
              "Cài đặt cách vô hiệu hóa và người liên hệ thừa kế", null),
        ],
      ),
    );
  }

  double fontSizeTitle = 20;
  double fontSizeBio = 15;

  _get_buttonSettingInFo(String title, String bio, String route) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(route),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: RichText(
                    textAlign: TextAlign.start,
                    maxLines: 3,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: title,
                          style: TextStyle(
                              fontSize: fontSizeTitle,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "\n" + bio,
                          style: TextStyle(
                              fontSize: fontSizeBio, color: Colors.black54)),
                    ]),
                  ),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
          child: Divider(
            thickness: 3,
            color: Colors.black12,
          ),
        ),
      ],
    );
  }
}
