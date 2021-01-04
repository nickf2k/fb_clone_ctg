import 'package:fb_clone_ctg/constant/default_media.dart';
import 'package:flutter/material.dart';

class FacebookAvatar extends StatelessWidget {
  final String urlAvatar;
  final double size;

  const FacebookAvatar({Key key, this.urlAvatar, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 150,
      width: size ?? 150,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: urlAvatar != null
                  ? NetworkImage(urlAvatar)
                  : AssetImage(MediaConstant.DEFAUT_AVATAR_1)),
          border: Border.all(color: Colors.white, width: 6.0)),
    );
  }
}
