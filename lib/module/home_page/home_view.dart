import 'dart:ui';
import 'dart:wasm';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../base/base_widget.dart';
import '../../base/base_widget.dart';
import '../../shared/widgets/top_nav_bar.dart';

class HomePage extends StatefulWidget {
  final bool hasBoder;

  const HomePage({Key key, this.hasBoder}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState(this.hasBoder);
}

class _HomePageState extends State<HomePage> {
  final bool hasBoder;

  _HomePageState(this.hasBoder);

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      hasTopNavBar: true,
      child: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Divider(height: 5, thickness: 5, color: Colors.grey[300]),
                  _userAddPost(),
                  Divider(
                    height: 2,
                    thickness: 10,
                    color: Colors.grey[400],
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
                    thickness: 10,
                    color: Colors.grey[500],
                  ),
                  _stories(),
                  Divider(
                    height: 2,
                    thickness: 10,
                    color: Colors.grey[500],
                  ),
                ],
              ),
            ),
          ],
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
                  _circleAvatar(),
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

  _circleAvatar({bool border = false}) {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          radius: 25.0,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            radius: border ? 18.0 : 25.0,
            backgroundImage: AssetImage('assets/images/batman.jpg'),
            backgroundColor: Colors.grey[200],
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            height: 15.0,
            width: 15.0,
            decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(width: 2.0, color: Colors.white)),
          ),
        )
      ],
    );
  }

  _createRoom() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: <Widget>[
          _allSizebox(h: 15),
          Container(
            height: 60,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Row(
                children: <Widget>[
                  _allSizebox(w: 7),
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
                  _circleAvatar(),
                  _allSizebox(w: 8),
                  _circleAvatar(),
                  _allSizebox(w: 8),
                  _circleAvatar(),
                  _allSizebox(w: 8),
                  _circleAvatar(),
                  _allSizebox(w: 8),
                  _circleAvatar(),
                  _allSizebox(w: 8),
                  _circleAvatar(),
                  _allSizebox(w: 8),
                  _circleAvatar(),
                ],
              ),
            ),
          ),
        ],
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
      height: 210,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: <Widget>[
            _allSizebox(h: 10),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 7,
                ),
                _getStoryWidget(
                    child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.add),
                  iconSize: 30,
                  color: Colors.blueAccent,
                  onPressed: () => print('Add to Story'),
                )),
                SizedBox(
                  width: 7,
                ),
                _getStoryWidget(child: _circleAvatar(border: true)),
                SizedBox(
                  width: 7,
                ),
                _getStoryWidget(child: _circleAvatar(border: true)),
                SizedBox(
                  width: 7,
                ),
                _getStoryWidget(child: _circleAvatar(border: true)),
                SizedBox(
                  width: 7,
                ),
                _getStoryWidget(child: _circleAvatar(border: true)),
                SizedBox(
                  width: 7,
                ),
                _getStoryWidget(child: _circleAvatar(border: true)),
                SizedBox(
                  width: 7,
                ),
                _getStoryWidget(child: _circleAvatar(border: true)),
                SizedBox(
                  width: 7,
                ),
                _getStoryWidget(child: _circleAvatar(border: true)),
              ],
            ),
            _allSizebox(h: 10)
          ],
        ),
      ),
    );
  }

  _getStoryWidget({child}) {
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
        )
      ],
    );
  }
}
