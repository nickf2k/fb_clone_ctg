import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const double fontSize = 15.5;
const double fontSize1 = 13.5;
const double iconSize = 15;
const double widthImage = 35;
const double heightIamge = 35;

class Settingg extends StatefulWidget {
  @override
  _SettinggState createState() => _SettinggState();
}

class _SettinggState extends State<Settingg> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
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
                              'nghia.jpg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
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
                                            'saved.png',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Text("Đã lưu",
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
                                            'findfriend.png',
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
                                            'watchvideo.png',
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
                                            'page.png',
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
                                            'event.png',
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
                                            'friends.png',
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
                                            'marketplace.png',
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
                                            'job.png',
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
                                            'gruop.png',
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
                                            'dating.png',
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
                                            'playgame.png',
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
                        'eye.png',
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
                                      'avatar.png',
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
                                      'fundraisingcampaign.png',
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
                                      'facebookpay.png',
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
                                      'themostnearhere.png',
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
                                      'advertisement.png',
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
                                      'smallmessenger.png',
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
                                      'findwifi.png',
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
                                      'emergencyresponsel.png',
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
                                      'interestrate.png',
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
                                      'livevideo.png',
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
                                      'requetfromdevices.png',
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
                        'help&support.png',
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
                                      'helpcenter.png',
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
                                      'boxsupport.png',
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
                                      'communityhelp.png',
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
                                      'reportproblem.png',
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
                                      'policy&rules.png',
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
                        'settings&private.png',
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
                                      'settings.png',
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
                                      'privates.png',
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
                                      'timeinfacebook.png',
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
                                      'darkmode.png',
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
                                      'languages.png',
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
                                      '5g.png',
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
                                      'key.png',
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
                              'logout.png',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
                            child: Text("Đăng xuất",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: fontSize,
                                  fontWeight: FontWeight.normal,
                                )),
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
}
