import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllFriendPage extends StatefulWidget {
  @override
  _AllFriendPageState createState() => _AllFriendPageState();
}

class _AllFriendPageState extends State<AllFriendPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 25, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30,
                        color: Colors.black,
                        onPressed: () => Navigator.pop(context),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Tất cả bạn bè",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    iconSize: 30,
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.black12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Text(
                    "53 bạn bè",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
                  child: Text(
                    "Sắp xếp",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            _getlistFrien("Nguyễn Minh Tìan", "sadas"),
            _getlistFrien("Nguyễn Minh Tìan", "sadas"),
            _getlistFrien("Nguyễn Minh Tìan", "sadas"),
            _getlistFrien("Nguyễn Minh Tìan", "sadas"),

          ],
        ),
      ),
    );
  }

  _getlistFrien(String name, String urlImage) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Row(
              children: [
                CircleAvatar(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: IconButton(
                  icon: Icon(
                    Icons.more_horiz_sharp,
                  ),
                  onPressed: () {}))
        ],
      ),
    );
  }
}
