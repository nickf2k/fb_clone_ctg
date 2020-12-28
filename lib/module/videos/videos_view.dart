import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/shared/widgets/top_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../constant/default_media.dart';
import '../../shared/widgets/get_items_video.dart';

import '../../shared/widgets/get_interaction.dart';

class VideosPage extends StatefulWidget {

  @override
  _VideosPageState createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  double fontSize = 14;
  double fontLCS = 12;
  double heightIcon = 17;
  double widthIcon =17;
  double fontSizeCap = 15;
  @override
  Widget build(BuildContext context) {

    return PageContainer(
      navBarIndex: NavBarIndex.VIDEO,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Watch",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: ImageIcon(
                            AssetImage(
                              'assets/icons/user.png',
                            ),
                            color: Colors.black,
                          ),
                          onPressed: () {},
                          iconSize: 35,
                        ),
                        IconButton(
                          icon: ImageIcon(
                            AssetImage(
                              'assets/icons/search.png',
                            ),
                            color: Colors.black,
                          ),
                          onPressed: () {},
                          iconSize: 35,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _getContainerVideo(
                "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4",
                "My hobby",
                "21 Th12",
                120,
                12,
                2),
            _getContainerVideo(
                "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
                "Hip Hop never die",
                "10 Th10",
                12,
                1,
                1),
            _getContainerVideo(
                "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
                "Step 1",
                "22 Th8",
                356,
                12,
                13),
          ],
        ),
      ),
    );
  }

  _getContainerVideo(String nameVideo, String cap, String time, int interactive,
      int comment, int share) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
//      mainAxisAlignment: MainAxisAlignment.center,
//      crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.black12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          MediaConstant.DEFAUT_AVATAR_1,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
//                      crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text("Phạm Tuấn Nghĩa",
                            style: TextStyle(
                              fontSize: fontSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 65, 0),
                              child: Text(time,
                                style: TextStyle(
                                  fontSize: 12,
                                ),)),
                        ],
                      ),
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    cap,
                    style: TextStyle(
                      fontSize: fontSizeCap,
                    ),
                  ),
                ],
              ),
            ),
            GetItemsVideo(
              videoPlayerController: VideoPlayerController.network(
                nameVideo,
              ),
//              looping: true,
            ),

            Interact(interactive: interactive,comment: comment,share: share,),

          ],
        ),
      ),
    );
  }
}
