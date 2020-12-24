import 'dart:ui';
import 'dart:wasm';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/shared/widgets/profile_avatar.dart';
import 'package:fb_clone_ctg/shared/widgets/status_widget.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../base/base_widget.dart';
import '../../base/base_widget.dart';
import '../../shared/widgets/top_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageContainer(
      hasTopNavBar: true,
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(height: 5, thickness: 5, color: Colors.grey[300]),
              _userAddPost(),
              Divider(
                height: 2,
                thickness: 8,
                color: Color(0xffc9cbd1),
              ),
              _createRoom(),
              Divider(
                height: 2,
                thickness: 1,
                color: Colors.grey[500],
              ),
              _livePhotoRoom(),
              Divider(
                height: 2,
                thickness: 1,
                color: Colors.grey[400],
              ),
              _allSizebox(h: 15),
              Divider(
                height: 2,
                thickness: 8,
                color: Color(0xffc9cbd1),
              ),
              _stories(),
              Divider(
                height: 2,
                thickness: 8,
                color: Color(0xffc9cbd1),
              ),
              _getListPost(),
            ],
          ),
        ),
      ),
    );
    // return SafeArea(child: Scaffold(body: TopNavBar()));
  }

  _userAddPost() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 15,
        ),
        Row(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              //  color: Colors.grey,
              child: Row(
                children: <Widget>[
                  _allSizebox(w: 7),
                  ProfileAvatar(),
                  _allSizebox(w: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    child: SizedBox(
                      width: 260,
                      height: 40,
                      child: RaisedButton(
                        onPressed: () => Navigator.pushNamed(
                            context, RouteConstant.ADD_POST,
                            arguments: 105),
                        color: Colors.grey[200],
                        child: Row(
                          children: <Widget>[
                            Text(
                              "What's on your mind?",
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        _allSizebox(h: 30),
      ],
    );
  }

  _createRoom() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 69,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(
              children: <Widget>[
                OutlineButton(
                  onPressed: () => print('Create Zoom'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.white,
                  borderSide:
                      BorderSide(width: 3.0, color: Colors.blueAccent[100]),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.video_call,
                        size: 35,
                        color: Colors.purpleAccent,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Create\nRoom')
                    ],
                  ),
                ),
                _allSizebox(w: 8),
                ProfileAvatar(),
                _allSizebox(w: 8),
                ProfileAvatar(),
                _allSizebox(w: 8),
                ProfileAvatar(),
                _allSizebox(w: 8),
                ProfileAvatar(),
                _allSizebox(w: 8),
                ProfileAvatar(),
                _allSizebox(w: 8),
                ProfileAvatar(),
                _allSizebox(w: 8),
                ProfileAvatar(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _livePhotoRoom() {
    return Column(
      children: <Widget>[
        Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton.icon(
                  onPressed: () => print('Live'),
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: Text("Live")),
              VerticalDivider(
                width: 8.0,
                color: Colors.grey[400],
              ),
              FlatButton.icon(
                  onPressed: () => print('Photo'),
                  icon: Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  label: Text("Photo")),
              VerticalDivider(
                width: 8.0,
                color: Colors.grey[400],
              ),
              FlatButton.icon(
                  onPressed: () => print('Room'),
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ),
                  label: Text("Room")),
            ],
          ),
        ),
      ],
    );
  }

  _allSizebox({
    double w,
    double h,
  }) {
    return SizedBox(
      width: w,
      height: h,
    );
  }

  _stories() {
    return Container(
      height: 226,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: <Widget>[
            _allSizebox(h: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  _getStoryWidget(
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.add),
                        iconSize: 30,
                        color: Colors.blueAccent,
                        onPressed: () => print('Add to Story'),
                      ),
                      name: 'Add to Story'),
                  SizedBox(
                    width: 7,
                  ),
                  _getStoryWidget(
                      child: ProfileAvatar(hasBorder: true),
                      name: "Nguyễn Minh Toàn"),
                  SizedBox(
                    width: 7,
                  ),
                  _getStoryWidget(
                      child: ProfileAvatar(hasBorder: true),
                      name: "Phạm Tuấn Nghĩa"),
                  SizedBox(
                    width: 7,
                  ),
                  _getStoryWidget(
                      child: ProfileAvatar(hasBorder: true),
                      name: "Phạm Tuấn Nghĩa"),
                  SizedBox(
                    width: 7,
                  ),
                  _getStoryWidget(
                      child: ProfileAvatar(hasBorder: true),
                      name: "Phạm Tuấn Nghĩa"),
                  SizedBox(
                    width: 7,
                  ),
                  _getStoryWidget(
                      child: ProfileAvatar(hasBorder: true),
                      name: "Phạm Tuấn Nghĩa"),
                  SizedBox(
                    width: 7,
                  ),
                  _getStoryWidget(
                      child: ProfileAvatar(hasBorder: true),
                      name: "Phạm Tuấn Nghĩa"),
                  SizedBox(
                    width: 7,
                  ),
                  _getStoryWidget(
                      child: ProfileAvatar(hasBorder: true),
                      name: "Phạm Tuấn Nghĩa"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getStoryWidget({child, String name, String imageUrl}) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(
            12.0,
          ),
          child: Image(
            image: NetworkImage(
                "https://scontent.fhan5-1.fna.fbcdn.net/v/t1.0-9/15781434_549397465256683_7544813911137178073_n.jpg?_nc_cat=109&ccb=2&_nc_sid=e3f864&_nc_ohc=RKa56DE9SdMAX-9J_6a&_nc_ht=scontent.fhan5-1.fna&oh=374871eeb838d42fb3e87bf378111a68&oe=60087581"),
            height: 180,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: child,
          ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          right: 8,
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }

  _getListPost({data}) {
    return Column(
      children: <Widget>[
        StatusWidget(),
        StatusWidget(),
      ],
    );
  }
}
