import 'dart:ui';
import 'dart:wasm';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fb_clone_ctg/constant/default_media.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/module/post/get_post/get_post_view.dart';
import 'package:fb_clone_ctg/module/post/get_post/post_item.dart';
import 'package:fb_clone_ctg/shared/widgets/profile_avatar.dart';
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
              GetPostView(),
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
                  ProfileAvatar(
                    urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_1,
                  ),
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
                ProfileAvatar(
                  urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_2,
                  hasBorder: false,
                ),
                _allSizebox(w: 8),
                ProfileAvatar(
                  urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_3,
                ),
                _allSizebox(w: 8),
                ProfileAvatar(urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_4),
                _allSizebox(w: 8),
                ProfileAvatar(urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_5),
                _allSizebox(w: 8),
                ProfileAvatar(urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_6),
                _allSizebox(w: 8),
                ProfileAvatar(urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_7),
                _allSizebox(w: 8),
                ProfileAvatar(urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_1),
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
                  onPressed: () {},
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
                      name: 'Add to Story',
                      imageUrl: MediaConstant.DEFAUT_IMAGE_1),
                  SizedBox(
                    width: 7,
                  ),
                  _getStoryWidget(
                      child: ProfileAvatar(
                          hasBorder: true,
                          urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_1),
                      name: MediaConstant.TOAN,
                      imageUrl: MediaConstant.DEFAUT_IMAGE_2),
                  SizedBox(
                    width: 7,
                  ),
                  _getStoryWidget(
                      child: ProfileAvatar(
                          hasBorder: true,
                          urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_2),
                      name: MediaConstant.NGHIA,
                      imageUrl: MediaConstant.DEFAUT_IMAGE_3),
                  SizedBox(
                    width: 7,
                  ),
                  _getStoryWidget(
                      child: ProfileAvatar(
                          hasBorder: true,
                          urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_3),
                      name: MediaConstant.VUONG,
                      imageUrl: MediaConstant.DEFAUT_IMAGE_4),
                  SizedBox(
                    width: 7,
                  ),
                  _getStoryWidget(
                      child: ProfileAvatar(
                          hasBorder: true,
                          urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_4),
                      name: MediaConstant.MAI,
                      imageUrl: MediaConstant.DEFAUT_IMAGE_5),
                  SizedBox(
                    width: 7,
                  ),
                  _getStoryWidget(
                      child: ProfileAvatar(
                          hasBorder: true,
                          urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_5),
                      name: MediaConstant.DUONG,
                      imageUrl: MediaConstant.DEFAUT_IMAGE_6),
                  SizedBox(
                    width: 7,
                  ),
                  _getStoryWidget(
                      child: ProfileAvatar(
                          hasBorder: true,
                          urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_6),
                      name: MediaConstant.TOAN,
                      imageUrl: MediaConstant.DEFAUT_IMAGE_1),
                  SizedBox(
                    width: 7,
                  ),
                  _getStoryWidget(
                      child: ProfileAvatar(
                          hasBorder: true,
                          urlAvatarAsset: MediaConstant.DEFAUT_AVATAR_7),
                      name: MediaConstant.VUONG,
                      imageUrl: MediaConstant.DEFAUT_IMAGE_2),
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
            image: AssetImage(imageUrl),
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
}
