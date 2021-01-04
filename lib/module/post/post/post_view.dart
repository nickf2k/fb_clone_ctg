import 'package:fb_clone_ctg/module/post/post/post_bloc.dart';
import 'package:fb_clone_ctg/module/post/post/post_event.dart';
import 'package:fb_clone_ctg/module/post/post/post_item.dart';
import 'package:fb_clone_ctg/shared/entities/get_list_post_result.dart';
import 'package:fb_clone_ctg/shared/entities/post_result.dart';
import 'package:fb_clone_ctg/shared/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';


class GetPostView extends StatefulWidget {
  @override
  _GetPostViewState createState() => _GetPostViewState();
}

class _GetPostViewState extends State<GetPostView> {
  PostBloc postBloc;

  @override
  Widget build(BuildContext context) {
    postBloc = PostBloc();
    postBloc.setContext(context);
    postBloc.eventController.sink.add(InitEvent());

    return StreamBuilder<PostResult>(
      stream: postBloc.postStream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LoadingIndicatorWidget();
        PostData postData = snapshot.data.postData;
        Author author = snapshot.data.author;
        return Container();
        // return ListView.builder(
        //   itemCount: listPost.length,
        //   itemBuilder: (context, index) {
        //     return PostItem(
        //       postData: listPost[index],
        //     );
        //   },
        // );
      },
    );
  }
}
