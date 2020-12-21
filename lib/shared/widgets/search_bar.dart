import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "facebook",
            style: TextStyle(
                fontSize: 28.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                color: Colors.blue),
          ),
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xfff0f1f6),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xfff0f1f6),
                ),
                child: IconButton(
                  icon: Icon(Icons.message, color: Colors.black),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
