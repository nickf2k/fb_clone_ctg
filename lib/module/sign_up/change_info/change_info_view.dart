import 'dart:io';

import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/module/sign_up/change_info/change_info_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import 'change_info_bloc.dart';

class ChangeInfoPage extends StatefulWidget {
  @override
  _ChangeInfoPageState createState() => _ChangeInfoPageState();
}

class _ChangeInfoPageState extends State<ChangeInfoPage> {
  ChangeInfoBloc _bloc;
  File _image;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController nameCtrl = TextEditingController();

  Future getImage() async {
    // ignore: deprecated_member_use
    File image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  Future takePhoto() async {
    // ignore: deprecated_member_use
    File image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    _bloc = ChangeInfoBloc();
    _bloc.setContext(context);
    return PageContainer(
        hasTopNavBar: false,
        canSearch: false,
        child: MultiProvider(
            providers: [],
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Form(
                    key: _form,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 25),
                          child: Center(
                            child: Container(
                              width: 70,
                              height: 70,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: CircleAvatar(
                                backgroundImage: (NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/600px-Facebook_Logo_%282019%29.png')),
                                radius: 25,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Container(
                            width: 250,
                            height: 250,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: CircleAvatar(
                              backgroundImage: _image == null
                                  ? NetworkImage(
                                      'https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg')
                                  : FileImage(_image),
                              radius: 150,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _button_Photo(),
                        SizedBox(
                          height: 25,
                        ),
                        getEditorItem(
                            label: "Name",
                            validateFunc: (String validate) {
                              if (validate.isEmpty) {
                                return "Must input";
                              }
                            }),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                          child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: RaisedButton(
                                onPressed: () {
                                  if (_form.currentState.validate()) {
                                    _bloc.eventController.sink.add(
                                        ChangeInfoEvent(
                                            name: nameCtrl.text,
                                            avatarFile: _image));
                                  }
                                },
                                child: Text("Continue",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }

  static Widget getEditorItem(
      {@required controller,
      filter,
      @required label,
      keyboardType,
      bool obscure = false,
      Function validateFunc}) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
        child: TextFormField(
          style: TextStyle(fontSize: 18, color: Colors.black),
          keyboardType: keyboardType ?? TextInputType.text,
          controller: controller,
          validator: validateFunc,
          // inputFormatters: <TextInputFormatter>[filter],
          obscureText: obscure,
          decoration: InputDecoration(
              labelText: label,

              // snapshot.hasError ? snapshot.error : null,
              labelStyle: TextStyle(color: Colors.black54, fontSize: 15)),
        ));
  }

  _button_Photo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: getImage,
          child: Row(
            children: [
              FloatingActionButton(
                heroTag: '1',
                backgroundColor: Colors.white,
                child: Icon(Icons.photo_library),
              ),
              SizedBox(
                width: 5,
              ),
              Text("Choose Photo")
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: takePhoto,
          child: Row(
            children: [
              FloatingActionButton(
                heroTag: '2',
                backgroundColor: Colors.white,
                child: Icon(Icons.camera_alt_rounded),
              ),
              SizedBox(
                width: 5,
              ),
              Text("Camera")
            ],
          ),
        )
      ],
    );
  }
}
