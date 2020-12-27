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
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              _typingPostStatus(), //ShowImage(),
              _allCard()
            ],
          ),
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
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 7,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(MediaConstant.DEFAUT_AVATAR_1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            child: TextField(
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
              iconData: Icons.image,
              nameIcon: "Thêm ảnh",
              color: Colors.green,
            ),
            _card(
                iconData: Icons.child_friendly,
                nameIcon: "Friend",
                color: Colors.blue),
            _card(
                iconData: Icons.face,
                nameIcon: "Feeling",
                color: Colors.yellow),
            _card(
                iconData: Icons.check, nameIcon: "Check in", color: Colors.red),
            _card(
                iconData: Icons.check, nameIcon: "Check in", color: Colors.red),
            _card(
                iconData: Icons.check, nameIcon: "Check in", color: Colors.red),
            _card(
                iconData: Icons.check, nameIcon: "Check in", color: Colors.red),
          ],
        ),
      ),
    );
  }

  _card({IconData iconData, String nameIcon, Color color, child}) {
    return Card(
      child: GestureDetector(
        onTap: () => loadAssets(),
        child: Container(
          color: Colors.grey,
          child: ListTile(
            leading: Icon(
              iconData,
              size: 45,
              color: color,
            ),
            title: Text(nameIcon),
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
