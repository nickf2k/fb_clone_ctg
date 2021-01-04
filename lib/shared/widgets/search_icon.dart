import 'package:flutter/material.dart';

class SearchIcon extends StatefulWidget {
  final Function onPressed;
  final double size;

  const SearchIcon({Key key, this.onPressed, this.size}) : super(key: key);

  @override
  _SearchIconState createState() => _SearchIconState();
}

class _SearchIconState extends State<SearchIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xfff0f1f6),
      ),
      child: IconButton(
        icon: Icon(
          Icons.search,
          size: widget.size,
          color: Colors.black,
        ),
        onPressed: widget.onPressed,
      ),
    );
  }
}
