import 'package:fb_clone_ctg/constant/default_media.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/shared/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class CreateRoom extends StatefulWidget {
  @override
  _CreateRoomState createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  @override
  Widget build(BuildContext context) {
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
                  onPressed: () =>
                      Navigator.pushNamed(context, RouteConstant.CHANGE_INFO),
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

  _allSizebox({
    double w,
    double h,
  }) {
    return SizedBox(
      width: w,
      height: h,
    );
  }
}
