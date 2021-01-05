import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/module/post/post/post_item.dart';
import 'package:flutter/material.dart';

class PostDetailPage extends StatefulWidget {
  @override
  _PostDetailPageState createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  int idStatus;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    idStatus = ModalRoute.of(context).settings.arguments;

    return DetailContainer(
      title: 'Status',
      actionWidget: null,
      child: PostItem(postId: idStatus,)
    );
  }
}
