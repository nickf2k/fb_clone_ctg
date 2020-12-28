import 'package:fb_clone_ctg/module/post/get_post/get_post_bloc.dart';
import 'package:fb_clone_ctg/module/post/get_post/post_item.dart';
import 'package:fb_clone_ctg/shared/entities/get_list_post_result.dart';
import 'package:fb_clone_ctg/shared/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';

import 'get_post_event.dart';

class GetPostView extends StatefulWidget {
  @override
  _GetPostViewState createState() => _GetPostViewState();
}

class _GetPostViewState extends State<GetPostView> {
  GetPostsBloc _getPostBloc;
  @override
  Widget build(BuildContext context) {
    _getPostBloc = GetPostsBloc();
    _getPostBloc.setContext(context);
    _getPostBloc.eventController.sink.add(InitEvent());

    return StreamBuilder<ListPostResult>(
      stream: _getPostBloc.postsStream,
      builder: (context, snapshot) {
        if(!snapshot.hasData) return LoadingIndicatorWidget();
        List<Post> listPost = snapshot.data.data.posts;
        return ListView.builder(
          itemCount: listPost.length,
          itemBuilder: (context, index){
            return PostItem(postData: listPost[index],);
          },
        );
      },

    );
  }
}
