import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/module/setting/setting_bloc.dart';
import 'package:fb_clone_ctg/module/setting/setting_event.dart';
import 'package:fb_clone_ctg/shared/widgets/top_nav_bar.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const double fontSize = 14;
const double fontSize1 = 13;
const double iconSize = 15;
const double widthImage = 35;
const double heightIamge = 35;

//The last fix view
class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  SettingBloc _settingBloc;
  String userName = SpUtil.getString(SPrefCacheConstant.KEY_USERNAME);
  String avatarUrl = SpUtil.getString(SPrefCacheConstant.KEY_AVATAR_URL);

  @override
  Widget build(BuildContext context) {
    _settingBloc = SettingBloc();
    _settingBloc.setContext(context);
    // TODO: implement build
    return PageContainer(
      navBarIndex: NavBarIndex.SETTING,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Menu",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.search,
                          size: 20.0,
                        ),
                        padding: EdgeInsets.all(10.0),
                        shape: CircleBorder(),
                      )
                    ],
                  ),
                ),
                SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(avatarUrl),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: MaterialButton(
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(RouteConstant.PROFILE),
                              child: RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                      text: userName,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: "\nXem trang cá nhân của bạn ",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black54)),
                                ]),
                              ),
                            ),
                          )
                        ],
                      ),
                      color: Color(0xffe7e8ea),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Container(
                    color: Color(0xfff2f3f5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              _getItem(
                                  "assets/icons/saved.png", "Đã lưu", null),
                              _getItem("assets/icons/findfriend.png", "Bạn bè",
                                  null),
                              _getItem("assets/icons/watchvideo.png",
                                  "Video trên Watch", null),
                              _getItem("assets/icons/page.png", "Trang", null),
                              _getItem(
                                  "assets/icons/event.png", "Sự kiện", null),
                              _getItem("assets/icons/friends.png",
                                  "Bạn bè quanh đây", null),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              _getItem("assets/icons/marketplace.png",
                                  "Marketplace", null),
                              _getItem(
                                  "assets/icons/job.png", "Việc làm", null),
                              _getItem("assets/icons/gruop.png", "Nhóm", null),
                              _getItem(
                                  "assets/icons/dating.png", "Hẹn hò", null),
                              _getItem("assets/icons/playgame.png", "Chơi game",
                                  null),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Color(0xfff2f3f5),
                  child: ExpansionTile(
                    leading: Image(
                      width: widthImage,
                      height: heightIamge,
                      image: AssetImage(
                        'assets/icons/eye.png',
                      ),
                    ),
                    title: Text(
                      "Xem thêm",
                      style: TextStyle(
                        fontSize: fontSize,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    children: <Widget>[
                      _getItemSetting(
                          "assets/icons/avatar.png", "Avatar", null),
                      _getItemSetting("assets/icons/fundraisingcampaign.png",
                          "Chiến dịch gây quỹ", null),
                      _getItemSetting(
                          "assets/icons/facebookpay.png", "Facebook Pay", null),
                      _getItemSetting("assets/icons/themostnearhere.png",
                          "Gần đây nhất", null),
                      _getItemSetting("assets/icons/advertisement.png",
                          "Hoạt động quảng cáo gần đây", null),
                      _getItemSetting("assets/icons/smallmessenger.png",
                          "Messenger nhí", null),
                      _getItemSetting(
                          "assets/icons/findwifi.png", "Tìm Wi-Fi", null),
                      _getItemSetting("assets/icons/emergencyresponsel.png",
                          "Ứng phó khẩn cấp", null),
                      _getItemSetting(
                          "assets/icons/interestrate.png", "Ưu đãi", null),
                      _getItemSetting("assets/icons/livevideo.png",
                          "Video trực tiếp", null),
                      _getItemSetting("assets/icons/requetfromdevices.png",
                          "Yêu cầu từ thiết bị", null),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xffe7e8ea),
                  child: ExpansionTile(
                    leading: Image(
                      width: widthImage,
                      height: heightIamge,
                      image: AssetImage(
                        'assets/icons/help&support.png',
                      ),
                    ),
                    title: Text(
                      "Trợ giúp & hỗ trợ",
                      style: TextStyle(
                        fontSize: fontSize,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    children: <Widget>[
                      _getItemSetting("assets/icons/helpcenter.png",
                          "Trung tâm trợ giúp", 'RouteConstant.SETTING_INFO'),
                      _getItemSetting("assets/icons/boxsupport.png",
                          "Hộp thư hỗ trợ", 'RouteConstant.SETTING_INFO'),
                      _getItemSetting("assets/icons/communityhelp.png",
                          "Cộng đồng trợ giúp", 'RouteConstant.SETTING_INFO'),
                      _getItemSetting("assets/icons/reportproblem.png",
                          "Báo cáo sự cố", 'RouteConstant.SETTING_INFO'),
                      _getItemSetting(
                          "assets/icons/policy&rules.png",
                          "Điều khoản chính sách",
                          'RouteConstant.SETTING_INFO'),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xffe7e8ea),
                  child: ExpansionTile(
                    leading: Image(
                      width: widthImage,
                      height: heightIamge,
                      image: AssetImage(
                        'assets/icons/settings&private.png',
                      ),
                    ),
                    title: Text(
                      "Cài đặt & quyền riêng tư",
                      style: TextStyle(
                        fontSize: fontSize,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    children: <Widget>[
                      _getItemSetting("assets/icons/settings.png", "Cài đặt",
                          'RouteConstant.PROFILE'),
                      _getItemSetting("assets/icons/privates.png",
                          "Lối tắt quyền riêng tư", 'RouteConstant.PROFILE'),
                      _getItemSetting(
                          "assets/icons/timeinfacebook.png",
                          "Thời gian bạn ở trên Facebook",
                          'RouteConstant.PROFILE'),
                      _getItemSetting("assets/icons/darkmode.png", "Chế độ tối",
                          'RouteConstant.PROFILE'),
                      _getItemSetting("assets/icons/languages.png", "Ngôn ngữ",
                          'RouteConstant.PROFILE'),
                      _getItemSetting("assets/icons/5g.png",
                          "Trình tiết kiệm dữ liệu", 'RouteConstant.PROFILE'),
                      _getItemSetting("assets/icons/key.png", "Trình tạo mã",
                          'RouteConstant.PROFILE'),
                    ],
                  ),
                ),
                SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          Image(
                            width: widthImage,
                            height: heightIamge,
                            image: AssetImage(
                              'assets/icons/logout.png',
                            ),
                          ),
                          GestureDetector(
                            onTap: () => _settingBloc.eventController.sink
                                .add(LogoutEvent()),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
                              child: Text("Đăng xuất",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: fontSize,
                                    fontWeight: FontWeight.normal,
                                  )),
                            ),
                          )
                        ],
                      ),
                      color: Color(0xffe7e8ea),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _getItem(String icon, String title, String route) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: RaisedButton(
//            onPressed: (){},
        onPressed: () =>
            Navigator.of(context).pushNamed(route ?? RouteConstant.SETTING),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 88, 0),
              child: Image(
                width: widthImage,
                height: heightIamge,
                image: AssetImage(
                  icon,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: fontSize1,
                      fontWeight: FontWeight.normal)),
            )
          ],
        ),
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
    );
  }

  _getItemSetting(String icon, String title, String route) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
      child: SizedBox(
          width: double.infinity,
          height: 50,
          child: RaisedButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(route ?? RouteConstant.SETTING),
            child: Row(
              children: <Widget>[
                Image(
                  width: widthImage,
                  height: heightIamge,
                  image: AssetImage(
                    icon,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: fontSize,
                          fontWeight: FontWeight.normal)),
                )
              ],
            ),
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
          )),
    );
  }
}
