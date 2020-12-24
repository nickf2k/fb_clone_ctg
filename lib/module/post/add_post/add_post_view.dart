import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/constant/default_media.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:use_html_t/style.dart';

class AddPostPage extends StatefulWidget {
  @override
  _AddPostPageState createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: DetailContainer(
        child: Container(
          child: Column(
            children: <Widget>[_typingPostStatus(), _allCard()],
          ),
        ),
      ),
    );
  }

  // _widget(){
  //   re''
  // }
  _typingPostStatus() {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 7,
              ),
              Center(
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(MediaConstant.DEFAUT_AVATAR_1),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          child: TextFormField(
              maxLines: 15,
              decoration: InputDecoration(
                labelText: "What's on your mind?",
              )),
        ),
      ],
    );
  }

  _allCard() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _card(
                iconData: Icons.video_call,
                nameIcon: "Create Room",
                color: Colors.purpleAccent),
            _card(
                iconData: Icons.child_friendly,
                nameIcon: "Friend",
                color: Colors.blue),
            _card(
                iconData: Icons.face,
                nameIcon: "Feeling",
                color: Colors.yellow),
            _card(
                iconData: Icons.check, nameIcon: "Check in", color: Colors.red),
            _card(
                iconData: Icons.check, nameIcon: "Check in", color: Colors.red),
            _card(
                iconData: Icons.check, nameIcon: "Check in", color: Colors.red),
            _card(
                iconData: Icons.check, nameIcon: "Check in", color: Colors.red),
          ],
        ),
      ),
    );
  }

  _card({IconData iconData, String nameIcon, Color color}) {
    return Card(
      child: Container(
        child: ListTile(
          leading: Icon(
            iconData,
            size: 45,
            color: color,
          ),
          title: Text(nameIcon),
        ),
      ),
    );
  }
}
