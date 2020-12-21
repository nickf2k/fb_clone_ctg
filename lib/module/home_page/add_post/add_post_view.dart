import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:flutter/material.dart';

class AddPostPage extends StatefulWidget {
  @override
  _AddPostPageState createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DetailContainer(
      child: Container(
        child: TextFormField(
          decoration: InputDecoration(labelText: 'Enter your username'),
        ),
      ),
    );
  }
}
