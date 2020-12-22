import 'package:fb_clone_ctg/base/base_widget.dart';
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
    return DetailContainer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 50,
            child: Row(
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/women.jpg"),
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
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(
                    Icons.video_call,
                    size: 45,
                    color: Colors.purpleAccent,
                  ),
                  title: Text('Create Room'),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(
                    Icons.child_friendly,
                    size: 45,
                    color: Colors.blue,
                  ),
                  title: Text('Friend'),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(
                    Icons.face,
                    size: 45,
                    color: Colors.yellow,
                  ),
                  title: Text('Feeling'),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(
                    Icons.check,
                    size: 45,
                    color: Colors.red,
                  ),
                  title: Text('Check in'),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(
                    Icons.camera_alt,
                    size: 45,
                    color: Colors.blue,
                  ),
                  title: Text('Camera'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
