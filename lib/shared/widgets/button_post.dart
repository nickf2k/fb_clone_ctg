import 'package:fb_clone_ctg/module/post/add_post/add_post_bloc.dart';
import 'package:fb_clone_ctg/module/post/add_post/add_post_event.dart';
import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class ButtonPost extends StatefulWidget {
  final String described;
  final List<Asset> listAsset;

  const ButtonPost({Key key, this.described, this.listAsset}) : super(key: key);

  @override
  _ButtonPostState createState() => _ButtonPostState();
}

class _ButtonPostState extends State<ButtonPost> {
  AddPostBloc _addPostBloc;

  @override
  Widget build(BuildContext context) {
    _addPostBloc = AddPostBloc();
    return RaisedButton(
      onPressed: () => onPost(_addPostBloc),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Text(
            "Post",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  onPost(AddPostBloc bloc) {
    print("posting status");
    bloc.setContext(context);
    bloc.eventController.sink.add(AddPostEvent(
        described: widget.described, listAsset: widget.listAsset, status: ""));
  }
}
