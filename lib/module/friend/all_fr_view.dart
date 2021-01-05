import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/shared/entities/user_friends_result.dart';
import 'package:fb_clone_ctg/shared/widgets/loading_indicator.dart';
import 'package:fb_clone_ctg/shared/widgets/profile_avatar.dart';
import 'package:fb_clone_ctg/shared/widgets/top_nav_bar.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'friend_bloc.dart';
import 'friend_event.dart';

class AllFriendPage extends StatefulWidget {
  @override
  _AllFriendPageState createState() => _AllFriendPageState();
}

class _AllFriendPageState extends State<AllFriendPage> {
  FriendBloc _bloc;

  var _friendStyle = TextStyle(fontSize: 14, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    _bloc = FriendBloc();
    _bloc.setContext(context);
    int userId = SpUtil.getInt(SPrefCacheConstant.KEY_USER_ID);

    _bloc.eventController.sink.add(GetAllFriendEvent(userId));
    return DetailContainer(
      title: "Tất cả bạn bè",
      actionWidget: IconButton(
        icon: Icon(Icons.search),
      ),
      child: MultiProvider(
        providers: [Provider.value(value: FriendBloc())],
        child: StreamBuilder<UserFriendResult>(
          stream: _bloc.allFriendCtrl.stream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return LoadingIndicatorWidget();
            List<Friend> listFriends = snapshot.data.data.friends;
            return SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(15, 25, 0, 0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Row(
                  //         children: [
                  //           IconButton(
                  //             icon: Icon(Icons.arrow_back),
                  //             iconSize: 30,
                  //             color: Colors.black,
                  //             onPressed: () => Navigator.pop(context),
                  //           ),
                  //           Padding(
                  //             padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  //             child: Text(
                  //               "Tất cả bạn bè",
                  //               style: TextStyle(
                  //                 fontSize: 20,
                  //                 color: Colors.black,
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       IconButton(
                  //         icon: Icon(Icons.search),
                  //         iconSize: 30,
                  //         color: Colors.black,
                  //         onPressed: () {},
                  //       ),
                  //     ],
                  //   ),
                  // ),
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
                          "${listFriends.length} bạn bè",
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
                  snapshot.hasData
                      ? ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: listFriends.length,
                          itemBuilder: (context, index) {
                            return _getFriendItem(listFriends[index].username,
                                listFriends[index].avatar);
                          })
                      : LoadingIndicatorWidget()
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  _getFriendItem(String name, String urlImage) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Row(
              children: [
                ProfileAvatar(
                  hasBorder: false,
                  urlAvatarNetWork: urlImage,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    name ?? "Nguyễn Văn Default",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
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
