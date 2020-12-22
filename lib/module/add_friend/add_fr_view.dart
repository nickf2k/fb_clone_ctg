import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/module/add_friend/friend_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddFriendPage extends StatefulWidget {
  @override
  _AddFriendPageState createState() => _AddFriendPageState();
}

class _AddFriendPageState extends State<AddFriendPage> {
  static const double pagePadding = 10;
  var listRequests = FriendRequest.getListAddFriend();

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      canSearch: false,
      hasTopNavBar: true,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: pagePadding),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Bạn bè",
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(Icons.search),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    getBadge("Gợi ý"),
                    VerticalDivider(
                      width: 10,
                    ),
                    getBadge("Tất cả bạn bè"),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                          TextSpan(text: "Lời mời kết bạn "),
                          TextSpan(
                              text: "42",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.red)),
                        ])),
                    Text(
                      "Xem tất cả",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              getListRequest(listRequests),
            ],
          ),
        ),
        color: Colors.white,
      ),
    );
  }

  Widget getBadge(String content) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey,
      ),
      child: Text(
        " " + content + " ",
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
    );
  }

  Widget getListRequest(List<FriendRequest> listRequests) {
    return ListView(
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: <Widget>[
        getItemRequest(),
        getItemRequest(),
        getItemRequest(),
        getItemRequest(),
        getItemRequest(),
        getItemRequest(),
        getItemRequest(),
        getItemRequest(),
      ],
    );
  }

  Widget getActionButton(String content, {bool submit}) {
    return Container(
      height: 35,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          color: submit ? Color(0xff1677f4) : Color(0xffe5e6eb),
          borderRadius: BorderRadius.circular(5)),
      child: MaterialButton(
        child: Text(
          content,
          style: TextStyle(color: submit ? Colors.white : Colors.black),
        ),
      ),
    );
  }

  Widget getItemRequest() {
    return Container(
      padding: EdgeInsets.only(top: 1, bottom: 5),
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              child: Container(
                // color: Colors.cyan,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://scontent.fhan2-1.fna.fbcdn.net/v/t1.0-9/126043617_1036131606862090_1132759911096420906_o.jpg?_nc_cat=106&ccb=2&_nc_sid=09cbfe&_nc_ohc=NL795JrKZ7YAX99QpxV&_nc_ht=scontent.fhan2-1.fna&oh=bde3c631ce2919fc6d0487a42191da39&oe=5FFC19DD'),
                  // radius: 40,
                  maxRadius: 45,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
                padding: EdgeInsets.only(left: 2),
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Nguyen Trung Duc"),
                          Text("2 năm"),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: getActionButton("Chấp nhận", submit: true),
                          flex: 1,
                        ),
                        Expanded(
                          child: getActionButton("Xóa", submit: false),
                          flex: 1,
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
