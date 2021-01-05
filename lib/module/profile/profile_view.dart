import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/config/app_color.dart';
import 'package:fb_clone_ctg/constant/default_media.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/module/profile/profile_bloc.dart';
import 'package:fb_clone_ctg/shared/entities/user_result.dart';
import 'package:fb_clone_ctg/shared/widgets/loading_indicator.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'profile_event.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ProfileBloc _bloc;
  final TextStyle normalStyle =
      TextStyle(fontSize: 15, color: AppColor.textBlack);
  final TextStyle boldStyle = TextStyle(
      fontSize: 15, fontWeight: FontWeight.bold, color: AppColor.textBlack);

  @override
  Widget build(BuildContext cx) {
    _bloc = ProfileBloc();
    _bloc.setContext(cx);
    int userId = SpUtil.getInt(SPrefCacheConstant.KEY_USER_ID);

    _bloc.eventController.sink.add(InitEvent(userId: userId));

    return PageContainer(
      bloc: [Provider.value(value: ProfileBloc())],
      hasTopNavBar: false,
      child: MultiProvider(
        providers: [Provider.value(value: ProfileBloc())],
        child: StreamBuilder<User>(
            stream: _bloc.userStream,
            builder: (cx, snapshot) {
              if (!snapshot.hasData) return LoadingIndicatorWidget();
              User user = snapshot.data;

              return ListView(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      getQuickInfo(
                          name: user.username ?? "Nguyễn Minh Toàn",
                          avatarUser: user.avatar,
                          imgCover: user.coverImage),
                      SizedBox(
                        height: 10.0,
                      ),
                      getProfileNavBar(),
                      SizedBox(
                        height: 10.0,
                      ),
                      Column(
                        children: [
                          getItemBackground(
                              iconData: Icons.work,
                              normalText: "Work at",
                              boldText: user.city ?? "Sea-Solution Software"),
                          getItemBackground(
                              iconData: Icons.delivery_dining,
                              normalText: "Studied at",
                              boldText: "Đại học Bách khoa Hà Nội"),
                          getItemBackground(
                              iconData: Icons.home,
                              normalText: "From ",
                              boldText: user.country ?? "Thanh Hoá"),
                        ],
                      ),
                      getPhotos(),
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }

  _showMoreOption(cx) {
    showModalBottomSheet(
      context: cx,
      builder: (BuildContext bcx) {
        return new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.feedback,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Give feedback or report this profile',
                    style: TextStyle(fontSize: 18.0),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.block,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Block',
                    style: TextStyle(fontSize: 18.0),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.link,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Copy link to profile',
                    style: TextStyle(fontSize: 18.0),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Search Profile',
                    style: TextStyle(fontSize: 18.0),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }

  getQuickInfo({String imgCover, String avatarUser, String name}) {
    return Column(
      children: [
        Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: imgCover == null
                                  ? AssetImage(MediaConstant.DEFAUT_IMAGE_2)
                                  : NetworkImage(imgCover))),
                    ),
                  )
                ],
              ),
              Positioned(
                top: 100.0,
                child: Container(
                  height: 190.0,
                  width: 190.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: avatarUser == null
                              ? AssetImage(MediaConstant.DEFAUT_AVATAR_1)
                              : NetworkImage(avatarUser)),
                      border: Border.all(color: Colors.white, width: 6.0)),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 130.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                name == null ? MediaConstant.TOAN : name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
              ),
              SizedBox(
                width: 5.0,
              ),
              Icon(
                Icons.check_circle,
                color: Colors.blueAccent,
              )
            ],
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        Container(
            child: Text(
          '💜💜 chỉ vì người hẹn một câu 🙁🙁 mà ta lỡ hẹn khoảng đâu chục người 👍🏻 👍',
          maxLines: 3,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17.0,
          ),
        )),
      ],
    );
  }

  getProfileNavBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.collections, color: Colors.blueAccent),
              ),
              Text(
                'following',
                style: TextStyle(color: Colors.blueAccent),
              )
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.message, color: Colors.black),
              ),
              Text(
                'Message',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.more_vert, color: Colors.black),
                onPressed: () {
                  _showMoreOption(context);
                },
              ),
              Text(
                'More',
                style: TextStyle(color: Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }

  getPhotos() {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 10.0,
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Photos',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Card(
                            child: Image.asset(MediaConstant.DEFAUT_IMAGE_2))),
                    Expanded(
                        child: Card(
                      child: Image.asset(MediaConstant.DEFAUT_IMAGE_3),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Card(
                      child: Image.asset(MediaConstant.DEFAUT_IMAGE_4),
                    )),
                    Expanded(
                        child: Card(
                      child: Image.asset(MediaConstant.DEFAUT_IMAGE_5),
                    )),
                    Expanded(
                        child: Card(
                      child: Image.asset(MediaConstant.DEFAUT_IMAGE_6),
                    ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  getItemBackground({IconData iconData, String normalText, String boldText}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            iconData,
            color: Colors.grey,
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
          RichText(
            text: TextSpan(
                // style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(text: normalText + " ", style: normalStyle),
                  TextSpan(text: boldText, style: boldStyle),
                  // TextSpan(text: 'bold', style: boldStyle),
                ]),
          )
        ],
      ),
    );
  }
}
