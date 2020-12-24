import 'package:fb_clone_ctg/constant/default_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileAvatar extends StatelessWidget {
  final bool hasBorder;
  final String urlAvatarAsset;
  final String urlAvatarNetWork;

  const ProfileAvatar(
      {Key key,
      this.hasBorder = false,
      this.urlAvatarAsset = MediaConstant.DEFAUT_AVATAR_1,
      this.urlAvatarNetWork})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          radius: 25.0,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            radius: hasBorder ? 18.0 : 25.0,
            backgroundImage: urlAvatarNetWork != null
                ? NetworkImage(urlAvatarNetWork)
                : AssetImage(urlAvatarAsset),
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
    ;
  }
}
