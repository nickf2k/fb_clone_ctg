import 'package:flutter/material.dart';

import '../../config/app_color.dart';

class Interact extends StatefulWidget {
  final int interactive;
  final int comment;
  final int share;

  const Interact({Key key, this.interactive=10, this.comment=12, this.share=3})
      : super(key: key);

  @override
  _InteractState createState() => _InteractState();
}

class _InteractState extends State<Interact> {
  double fontLCS = 12;
  double heightIcon = 15;
  double widthIcon = 15;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            _countIteract(widget.interactive, "likes"),
            _countIteract(widget.comment, "comments"),
            _countIteract(widget.share, "shares")

          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Divider(
            color: Colors.black12,
          ),
        ),
        Row(
          children: [
            _getActionButton(
                title: "Thích", urlImage: "assets/icons/button_like.png"),
            _getActionButton(
                title: "Bình luận", urlImage: "assets/icons/button_comment.png"),
            _getActionButton(title: "Chia sẻ", urlImage: "assets/icons/share.png"),
          ],
        )
      ],
    );
  }

  _getActionButton({String title, String urlImage}) {
    return Expanded(
      flex: 1,
      child: SizedBox(
        height: 45,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: RaisedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: Image(
                    width: widthIcon,
                    height: heightIcon,
                    image: AssetImage(
                      urlImage,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 3, 0, 0),
                  child: Text(title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: fontLCS,
                          fontWeight: FontWeight.normal)),
                )
              ],
            ),
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _countIteract(int count, String type) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Text(
              count.toString()+" ",
              overflow: TextOverflow.ellipsis,

              style: TextStyle(fontSize: fontLCS, color: AppColor.textGrey),
            ),
            Text(
              type,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: fontLCS, color: AppColor.textGrey),
            ),
          ],
        ),
      ),
    );
  }
}
