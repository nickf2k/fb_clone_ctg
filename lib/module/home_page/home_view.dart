import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../base/base_widget.dart';
import '../../base/base_widget.dart';
import '../../shared/widgets/top_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageContainer(
      hasTopNavBar: true,
      child: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    color: Colors.grey[300],
                    height: 5,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        //  color: Colors.grey,
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage("assets/images/men.jpg"),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              child: SizedBox(
                                width: 260,
                                height: 40,
                                child: RaisedButton(
                                  onPressed: () => Navigator.pushNamed(
                                      context, RouteConstant.ADD_POST,
                                      arguments: 105),
                                  color: Colors.grey[200],
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "What's on your mind?",
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    height: 2,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Container(
                  //   height: 40,
                  //   child: ListTile(
                  //     leading: Icon(Icons.account_circle),
                  //     title:
                  //         Align(alignment: Alignment(-1.2, 0), child: Text("live")),
                  //   ),
                  // ),

                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 2,
                    thickness: 10,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 100,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            child: SizedBox(
                              child: RaisedButton(
                                color: Colors.grey[400],
                                onPressed: () {},
                                child: Container(
                                  width: 170,
                                  height: 60,
                                  color: Colors.grey[400],
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.video_call,
                                        color: Colors.teal,
                                        size: 54,
                                      ),
                                      Text(
                                        "Create Room",
                                        style: TextStyle(
                                            color: Colors.indigo[800],
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 2,
                    thickness: 2,
                    color: Colors.grey[400],
                  ),
                  Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton.icon(
                            onPressed: () => print('Live'),
                            icon: Icon(
                              Icons.videocam,
                              color: Colors.red,
                            ),
                            label: Text("Live")),
                        VerticalDivider(
                          width: 8.0,
                          color: Colors.grey[400],
                        ),
                        FlatButton.icon(
                            onPressed: () => print('Live'),
                            icon: Icon(
                              Icons.photo_library,
                              color: Colors.green,
                            ),
                            label: Text("Live")),
                        VerticalDivider(
                          width: 8.0,
                          color: Colors.grey[400],
                        ),
                        FlatButton.icon(
                            onPressed: () => print('Live'),
                            icon: Icon(
                              Icons.video_call,
                              color: Colors.purpleAccent,
                            ),
                            label: Text("Live")),
                      ],
                    ),
                  ),
                  Divider(
                    height: 2,
                    thickness: 2,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    // return SafeArea(child: Scaffold(body: TopNavBar()));
  }

  onAddPostClick() {}
}
