import 'package:fb_clone_ctg/constant/route_constant.dart';
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
    return Row();
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
