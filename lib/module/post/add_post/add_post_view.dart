import 'package:dio/dio.dart';
import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/constant/default_media.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/shared/widgets/buttonPost.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:use_html_t/style.dart';

import 'add_post_bloc.dart';

class AddPostPage extends StatefulWidget {
  @override
  _AddPostPageState createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  AddPostBloc addPostBloc = AddPostBloc();

  TextEditingController _describedController = new TextEditingController();
  List<Asset> images = List<Asset>();
  List<String> paths = [];

  bool isChoosedImage = false;

  Future<void> loadAssets() async {
    List<Asset> resultList = List<Asset>();
    String error = 'No Error Dectected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    if (!mounted) return;
    List<MultipartFile> multipart = List<MultipartFile>();

    setState(() {
      images = resultList;
      for (int i = 0; i < resultList.length; i++) {
        // var path = await FlutterA.getAbsolutePath(images[i].identifier);
        print('src' + resultList[i].identifier);
        paths.add(resultList[i].identifier);
      }
      isChoosedImage = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: DetailContainer(
        actionWidget: ButtonPost(
          listPath: paths,
          described: _describedController.text,
          isEnable: _describedController.text == null ? false : true,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _getOwner(),
            _typingPostStatus(), //ShowImage(),
            _allCard()
          ],
        ),
      ),
    );
  }

  _getOwner() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(
              MediaConstant.DEFAUT_AVATAR_1,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8.0, 95, 0),
                  child: Text(
                    'Nguyễn Minh Toàn',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                _buttonTheme(
                    name: '  Public  ',
                    iconData1: Icons.public,
                    iconData2: Icons.arrow_drop_down_circle_outlined),
                SizedBox(
                  width: 4,
                ),
                _buttonTheme(
                    name: '  Album  ',
                    iconData1: Icons.add,
                    iconData2: Icons.arrow_drop_down_circle_outlined)
              ],
            ),
          ],
        ),
      ],
    );
  }

  _buttonTheme({String name, IconData iconData1, IconData iconData2}) {
    return ButtonTheme(
      height: 25,
      minWidth: 20,
      child: OutlineButton(
        onPressed: () => print(name),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
        color: Colors.white,
        borderSide: BorderSide(width: 1.0, color: Colors.grey),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Icon(
                iconData1,
                size: 10,
                color: Colors.grey[800],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Icon(
                iconData2,
                size: 10,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // _widget(){
  //   re''
  // }
  _typingPostStatus() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Row(
                  children: [
                    // CircleAvatar(
                    //   radius: 25,
                    //   backgroundImage:
                    //       AssetImage(MediaConstant.DEFAUT_AVATAR_1),
                    // ),
                    //   Text(" ")
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            child: TextField(
                textAlign: TextAlign.start,
                controller: _describedController,
                maxLines: 10,
                decoration: InputDecoration(
                  labelText: "What's on your mind?",
                )),
          ),
          isChoosedImage
              ? buildGridView()
              : Container(
                  height: 0,
                )
        ],
      ),
    );
  }

  _allCard() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _card(
                iconData: Icons.photo_library,
                nameIcon: "Photo/Video",
                color: Colors.green,
                onClick: true),
            _card(
                iconData: Icons.camera_alt_rounded,
                nameIcon: "Camera",
                color: Colors.blue),
            _card(
              iconData: Icons.video_call,
              nameIcon: "Create Room",
              color: Colors.purpleAccent,
            ),
            _card(
                iconData: Icons.face_unlock_sharp,
                nameIcon: "Feeling/Activity",
                color: Colors.yellow),
            _card(
                iconData: Icons.video_call_outlined,
                nameIcon: "Live Video",
                color: Colors.red),
            _card(
                iconData: Icons.gif_sharp, nameIcon: "GIF", color: Colors.red),
            _card(
                iconData: Icons.check, nameIcon: "Check In", color: Colors.red),
          ],
        ),
      ),
    );
  }

  _card(
      {IconData iconData, String nameIcon, Color color, bool onClick = false}) {
    return Card(
      child: GestureDetector(
        onTap: () => onClick == false ? null : loadAssets(),
        child: Container(
          height: 50,
          color: Colors.white,
          child: ListTile(
            leading: Icon(
              iconData,
              size: 22,
              color: color,
            ),
            title: Text(
              nameIcon,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildGridView() {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: List.generate(images.length, (index) {
          Asset asset = images[index];
          return AssetThumb(
            asset: asset,
            width: 200,
            height: 200,
          );
        }),
      ),
    );
  }
}
