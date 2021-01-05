import 'package:fb_clone_ctg/constant/default_media.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/module/post/post/post_bloc.dart';
import 'package:fb_clone_ctg/module/post/post/post_event.dart';
import 'package:fb_clone_ctg/shared/entities/get_list_post_result.dart';
import 'package:fb_clone_ctg/shared/entities/post_result.dart';
import 'package:fb_clone_ctg/shared/widgets/interact.dart';
import 'package:fb_clone_ctg/shared/widgets/loading_indicator.dart';
import 'package:fb_clone_ctg/shared/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PostItem extends StatefulWidget {
  final int postId;

  const PostItem({Key key, this.postId}) : super(key: key);

  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  PostBloc _postBloc;

  @override
  Widget build(BuildContext context) {
    _postBloc = PostBloc();
    _postBloc.setContext(context);
    _postBloc.eventController.sink.add(InitEvent(postId: widget.postId));
    return StreamBuilder<PostResult>(
        stream: _postBloc.postStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Container();
          PostData postData = snapshot.data.postData;
          Author author = snapshot.data.author;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _getOwner(author),
                _getDescripbe(
                    descripbe: postData != null
                        ? postData.described
                        : MediaConstant.STATUS_1,
                    idPost: postData.id),
                _getMedia(),
                PostInteration(),
              ],
            ),
          );
        });
  }

  Widget _getOwner(Author author) {
    if (!author.avatar.contains("http")) author.avatar = null;
    return Row(
      children: <Widget>[
        ProfileAvatar(
          urlAvatarNetWork: author.avatar,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                author != null ? author.name : MediaConstant.TOAN,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Row(
                children: <Widget>[
                  Text(
                    '58m   ',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey[600],
                    size: 12,
                  )
                ],
              ),
            ],
          ),
        ),
        IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: () {},
        )
      ],
    );
  }

  Widget _getDescripbe({String descripbe, int idPost}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, RouteConstant.POST_DETAIL,
            arguments: idPost),
        child: Text(
          descripbe,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  Widget _getMedia() {
    return Container(
      height: 300,
      child: Image(
        image: AssetImage(MediaConstant.DEFAUT_IMAGE_1),
      ),
    );
  }
}
