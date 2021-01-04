import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:flutter/material.dart';

class ChangingPasswordPage extends StatefulWidget {
  @override
  _ChangingPasswordPageState createState() => _ChangingPasswordPageState();
}

class _ChangingPasswordPageState extends State<ChangingPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xffdadde1),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 15, 0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30,
                        color: Colors.black,
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    Text(
                      "Đổi mật khẩu",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Color(0xffdadde1),
              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 15)),
                  _getTextField("Mật khẩu hiện tại"),
                  _getTextField("Mật khẩu mới"),
                  _getTextField("Gõ lại mật khẩu mới"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: SizedBox(
                      height: 35,
                      width: double.infinity,
                      child: MaterialButton(
                          color: Colors.blue,
                          onPressed: () {},
                          child: Text(
                            "Lưu thay đổi",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: SizedBox(
                      height: 35,
                      width: double.infinity,
                      child: MaterialButton(
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            "Hủy",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          )),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 20, 50, 0),
                    child: Text(
                      "Quên mật khẩu ?",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getTextField(String title) {
    return Container(
        margin: const EdgeInsets.only(left: 15.0, top: 0, right: 15.0),
        height: 40.0,
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.all(new Radius.circular(25.7))),
        child: new Directionality(
            textDirection: TextDirection.ltr,
            child: new TextField(
              controller: null,
              autofocus: false,
              style: new TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
              decoration: new InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: title,
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
              ),
            )));
  }
}
