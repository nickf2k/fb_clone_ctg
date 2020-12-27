import 'package:fb_clone_ctg/module/post/get_post/get_post_bloc.dart';
import 'package:fb_clone_ctg/module/post/get_post/post_item.dart';
import 'package:flutter/material.dart';

class GetPostView extends StatefulWidget {
  @override
  _GetPostViewState createState() => _GetPostViewState();
}

class _GetPostViewState extends State<GetPostView> {
  GetPostBloc getPostBloc;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PostItem(),
        PostItem(),
      ],
    );
  }
}
