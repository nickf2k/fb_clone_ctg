import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/config/app_color.dart';
import 'package:fb_clone_ctg/module/sign_in/sign_in_bloc.dart';
import 'package:fb_clone_ctg/shared/entities/friend_request_result.dart';
import 'package:fb_clone_ctg/shared/widgets/top_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fb_clone_ctg/module/friend/friend_bloc.dart';
import 'package:provider/provider.dart';
import 'package:fb_clone_ctg/module/friend/friend_event.dart';
import 'package:fb_clone_ctg/untils/common_utils.dart';
import 'package:fb_clone_ctg/constant/active_constant.dart';

class RequestedPage extends StatefulWidget {
  // AddFriendBloc _bloc;
  @override
  _RequestedPageState createState() => _RequestedPageState();
}

class _RequestedPageState extends State<RequestedPage> {
  static const double pagePadding = 10;
  FriendBloc _bloc;

  var _friendStyle = TextStyle(fontSize: 14, color: Colors.black);

  // var listRequests = RequestedFriend().getListAddFriend();

  @override
  Widget build(BuildContext context) {
    _bloc = FriendBloc();
    _bloc.setContext(context);
    _bloc.eventController.sink.add(RequestedEvent());
    return PageContainer(
      bloc: [Provider.value(value: FriendBloc())],
      canSearch: false,
      hasTopNavBar: true,
      navBarIndex: NavBarIndex.FRIEND,
      child: MultiProvider(
        providers: [Provider.value(value: FriendBloc())],
        child: StreamBuilder<RequestedFriend>(
          stream: _bloc.requestedStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(
                  child: CircularProgressIndicator(
                value: 1,
              ));
            return Container(
              margin:
                  EdgeInsets.symmetric(vertical: 0, horizontal: pagePadding),
              child: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 0),
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 0),
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 0),
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
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red)),
                              ])),
                          Text(
                            "Xem tất cả",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    getListRequest(snapshot.data.data.requested),
                  ],
                ),
              ),
              color: Colors.white,
            );
          },
        ),
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
        style: _friendStyle,
      ),
    );
  }

  Widget getListRequest(List<Requested> listRequests) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return getItemRequest(listRequests[index]);
      },
      itemCount: listRequests.length,
    );
  }

  Widget getActionButton(String content, {bool submit, int userId}) {
    return Container(
      height: 35,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          color: submit ? Color(0xff1677f4) : Color(0xffe5e6eb),
          borderRadius: BorderRadius.circular(5)),
      child: MaterialButton(
        onPressed: () {
          _bloc.eventController.sink
              .add(AcceptEvent(userId, ActiveConstant.IS_ACTIVE));
        },
        child: Text(
          content,
          style: TextStyle(
              color: submit ? Colors.white : Colors.black, fontSize: 12),
        ),
      ),
    );
  }

  Widget getItemRequest(Requested requested) {
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
                          Text(
                            requested.username ?? "Nguyen Trung Duc",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            CommonUtils.timeFromNow(requested.created) ??
                                "2 năm",
                            style: TextStyle(
                                fontSize: 12, color: AppColor.textGrey),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: getActionButton("Chấp nhận",
                              submit: true, userId: requested.id),
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
