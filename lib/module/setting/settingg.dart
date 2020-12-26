import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/module/setting/setting_bloc.dart';
import 'package:fb_clone_ctg/module/setting/setting_event.dart';
import 'package:fb_clone_ctg/shared/widgets/top_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

const double fontSize = 15.5;
const double fontSize1 = 13.5;
const double iconSize = 15;
const double widthImage = 35;
const double heightIamge = 35;

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  SettingBloc _settingBloc;
  @override
  Widget build(BuildContext context) {
    _settingBloc = SettingBloc();
    _settingBloc.setContext(context);
    // TODO: implement build
    return PageContainer(
      navBarIndex: NavBarIndex.SETTING,
      bloc: [Provider.value(value: _settingBloc)],
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
//            color: Color(0xe7e8ea),
//          color: Colors.greenAccent
              ),
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
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.search,
                          size: 25.0,
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
                            backgroundImage: AssetImage(
                              'assets/icons/nghia.jpg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
                            child: MaterialButton(
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(RouteConstant.PROFILE),
                              child: RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                      text: "Phạm Tuấn Nghĩa",
                                      style: TextStyle(
                                          fontSize: 22,
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
                Container(
                  color: Color(0xfff2f3f5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          getItem("assets/icons/saved.png", "Đã lưu", null),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                            child: SizedBox(
                                width: 160,
                                height: 70,
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 88, 0),
                                        child: Image(
                                          width: widthImage,
                                          height: heightIamge,
                                          image: AssetImage(
                                            'assets/icons/findfriend.png',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Text("Bạn bè",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: fontSize1,
                                                fontWeight: FontWeight.normal)),
                                      )
                                    ],
                                  ),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                            child: SizedBox(
                                width: 160,
                                height: 70,
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 88, 0),
                                        child: Image(
                                          width: widthImage,
                                          height: heightIamge,
                                          image: AssetImage(
                                            'assets/icons/watchvideo.png',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Text("Video trên Watch",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: fontSize1,
                                                fontWeight: FontWeight.normal)),
                                      )
                                    ],
                                  ),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                            child: SizedBox(
                                width: 160,
                                height: 70,
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 88, 0),
                                        child: Image(
                                          width: widthImage,
                                          height: heightIamge,
                                          image: AssetImage(
                                            'assets/icons/page.png',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Text("Trang",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: fontSize1,
                                                fontWeight: FontWeight.normal)),
                                      )
                                    ],
                                  ),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                            child: SizedBox(
                                width: 160,
                                height: 70,
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 88, 0),
                                        child: Image(
                                          width: widthImage,
                                          height: heightIamge,
                                          image: AssetImage(
                                            'assets/icons/event.png',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Text("Sự kiện",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: fontSize1,
                                                fontWeight: FontWeight.normal)),
                                      )
                                    ],
                                  ),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                            child: SizedBox(
                                width: 160,
                                height: 70,
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 88, 0),
                                        child: Image(
                                          width: widthImage,
                                          height: heightIamge,
                                          image: AssetImage(
                                            'assets/icons/friends.png',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Text("Bạn bè quanh đây",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: fontSize1,
                                                fontWeight: FontWeight.normal)),
                                      )
                                    ],
                                  ),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                )),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 15, 10),
                            child: SizedBox(
                                width: 160,
                                height: 70,
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 88, 0),
                                        child: Image(
                                          width: widthImage,
                                          height: heightIamge,
                                          image: AssetImage(
                                            'assets/icons/marketplace.png',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Text("Marketplace",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: fontSize1,
                                                fontWeight: FontWeight.normal)),
                                      )
                                    ],
                                  ),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 15, 10),
                            child: SizedBox(
                                width: 160,
                                height: 70,
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 88, 0),
                                        child: Image(
                                          width: widthImage,
                                          height: heightIamge,
                                          image: AssetImage(
                                            'assets/icons/job.png',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Text("Việc làm",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: fontSize1,
                                                fontWeight: FontWeight.normal)),
                                      )
                                    ],
                                  ),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 15, 10),
                            child: SizedBox(
                                width: 160,
                                height: 70,
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 88, 0),
                                        child: Image(
                                          width: widthImage,
                                          height: heightIamge,
                                          image: AssetImage(
                                            'assets/icons/gruop.png',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Text("Nhóm",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: fontSize1,
                                                fontWeight: FontWeight.normal)),
                                      )
                                    ],
                                  ),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 15, 10),
                            child: SizedBox(
                                width: 160,
                                height: 70,
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 88, 0),
                                        child: Image(
                                          width: widthImage,
                                          height: heightIamge,
                                          image: AssetImage(
                                            'assets/icons/dating.png',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Text("Hẹn hò",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: fontSize1,
                                                fontWeight: FontWeight.normal)),
                                      )
                                    ],
                                  ),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 15, 10),
                            child: SizedBox(
                                width: 160,
                                height: 70,
                                child: RaisedButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 88, 0),
                                        child: Image(
                                          width: widthImage,
                                          height: heightIamge,
                                          image: AssetImage(
                                            'assets/icons/playgame.png',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Text("Chơi game",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: fontSize1,
                                                fontWeight: FontWeight.normal)),
                                      )
                                    ],
                                  ),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                )),
                          ),
                        ],
                      ),
                    ],
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/avatar.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Avatar",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: fontSize,
                                            fontWeight: FontWeight.normal)),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/fundraisingcampaign.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Chiến dịch gây quỹ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/facebookpay.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Facebook Pay",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/themostnearhere.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Gần đây nhất",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/advertisement.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Hoạt động quảng cáo gần đây",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/smallmessenger.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Messenger nhí",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/findwifi.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Tìm Wi-Fi",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/emergencyresponsel.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Ứng phó khẩn cấp",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/interestrate.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Ưu đãi",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/livevideo.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Video trực tiếp",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/requetfromdevices.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Yêu cầu từ thiết bị",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/helpcenter.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Trung tâm trợ giúp",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: fontSize,
                                            fontWeight: FontWeight.normal)),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/boxsupport.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Hộp thư hỗ trợ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/communityhelp.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Cộng đồng trợ giúp",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/reportproblem.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Báo cáo sự cố",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/policy&rules.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Điều khoản chính sách",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/settings.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Cài đặt",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/privates.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Lối tắt quyền riêng tư",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/timeinfacebook.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Thời gian bạn ở trên Facebook",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/darkmode.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Chế độ tối",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/languages.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Ngôn ngữ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/5g.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Trình tiết kiệm dữ liệu",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: SizedBox(
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
                                      'assets/icons/key.png',
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text("Trình tạo mã",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ],
                              ),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            )),
                      ),
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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
                            child: MaterialButton(
                              onPressed: (){
                                _settingBloc.eventController.sink.add(LogoutEvent());
                              },
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

  getItem(String icon, String title, String route) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
      child: SizedBox(
          width: 160,
          height: 70,
          child: RaisedButton(
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
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
          )),
    );
  }
}
