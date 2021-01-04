import 'package:fb_clone_ctg/constant/default_media.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/shared/entities/get_list_post_result.dart';
import 'package:fb_clone_ctg/shared/entities/post_result.dart';
import 'package:fb_clone_ctg/shared/widgets/interact.dart';
import 'package:fb_clone_ctg/shared/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PostItem extends StatefulWidget {
  final Post postData;
  final Author author;

  const PostItem({Key key, this.postData, this.author}) : super(key: key);

  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _getOwner(),
          _getDescripbe(
              descripbe: widget.postData != null
                  ? widget.postData.described
                  : MediaConstant.STATUS_1),
          _getMedia(),
          GetInteration(),
        ],
      ),
    );
  }

  Widget _getOwner() {
    return Row(
      children: <Widget>[
        ProfileAvatar(),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.author != null ? widget.author.name : MediaConstant.TOAN,
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

  Widget _getDescripbe({String descripbe}) {
    return MaterialButton(
      onPressed: () => Navigator.pushNamed(context, RouteConstant.POST_DETAIL,
          arguments: "id status"),
      child: Text(
        descripbe,
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 15,
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
