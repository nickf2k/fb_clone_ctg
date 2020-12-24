import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/config/app_color.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextStyle normalStyle =
      TextStyle(fontSize: 15, color: AppColor.textBlack);
  final TextStyle boldStyle = TextStyle(
      fontSize: 15, fontWeight: FontWeight.bold, color: AppColor.textBlack);

  @override
  Widget build(BuildContext cx) {
    return PageContainer(
      hasTopNavBar: false,
      child: ListView(
        children: <Widget>[
          new Column(
            children: <Widget>[
              getQuickInfo(),
              SizedBox(
                height: 10.0,
              ),
              getProfileNavBar(),
              SizedBox(
                height: 10.0,
              ),
              getBackgroundInfo(),
              getPhotos(),
            ],
          )
        ],
      ),
    );
  }

  _showMoreOption(cx) {
    showModalBottomSheet(
      context: cx,
      builder: (BuildContext bcx) {
        return new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.feedback,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Give feedback or report this profile',
                    style: TextStyle(fontSize: 18.0),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.block,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Block',
                    style: TextStyle(fontSize: 18.0),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.link,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Copy link to profile',
                    style: TextStyle(fontSize: 18.0),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Search Profile',
                    style: TextStyle(fontSize: 18.0),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }

  getQuickInfo() {
    return Column(
      children: [
        Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/women.jpg'))),
                    ),
                  )
                ],
              ),
              Positioned(
                top: 100.0,
                child: Container(
                  height: 190.0,
                  width: 190.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/men.jpg')),
                      border: Border.all(color: Colors.white, width: 6.0)),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 130.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Nguyễn Minh Toàn',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
              ),
              SizedBox(
                width: 5.0,
              ),
              Icon(
                Icons.check_circle,
                color: Colors.blueAccent,
              )
            ],
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        Container(
            child: Text(
          '💜💜 chỉ vì người hẹn một câu 🙁🙁 mà ta lỡ hẹn khoảng đâu chục người 👍🏻 👍',
          maxLines: 3,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17.0,
          ),
        )),
      ],
    );
  }

  getProfileNavBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.collections, color: Colors.blueAccent),
              ),
              Text(
                'following',
                style: TextStyle(color: Colors.blueAccent),
              )
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.message, color: Colors.black),
              ),
              Text(
                'Message',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.more_vert, color: Colors.black),
                onPressed: () {
                  _showMoreOption(context);
                },
              ),
              Text(
                'More',
                style: TextStyle(color: Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }

  getPhotos() {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 10.0,
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Photos',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child:
                            Card(child: Image.asset('assets/images/men.jpg'))),
                    Expanded(
                        child: Card(
                      child: Image.asset('assets/images/women.jpg'),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Card(
                      child: Image.asset('assets/images/women.jpg'),
                    )),
                    Expanded(
                        child: Card(
                      child: Image.asset('assets/images/batman.jpg'),
                    )),
                    Expanded(
                        child: Card(
                      child: Image.asset('assets/images/batman.jpg'),
                    ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  getBackgroundInfo() {
    return Column(
      children: [
        getItemBackground(
            iconData: Icons.work,
            normalText: "Work at",
            boldText: "Sea-Solution Software"),
      ],
    );
  }

  getItemBackground({IconData iconData, String normalText, String boldText}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 15,
          ),
          SizedBox(
            width: 10,
          ),
          RichText(
            text: TextSpan(
                // style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(text: normalText + " ", style: normalStyle),

                  TextSpan(text: boldText, style: boldStyle),
                  // TextSpan(text: 'bold', style: boldStyle),
                ]),
          )
        ],
      ),
    );
  }
}
