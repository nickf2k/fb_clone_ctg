import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/shared/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StatusWidget extends StatefulWidget {
  @override
  _StatusWidgetState createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _getOwner(),
          _getDescripbe("something"),
          _getMedia(),
          _getInteration(),
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
                "Nguyễn Minh Toàn",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
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
        ),
        IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: () {},
        )
      ],
    );
  }

  Widget _getDescripbe(String descripbe) {
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
    return Container();
  }

  Widget _getInteration() {
    return Container();
  }
}
