import 'package:flutter/material.dart';

class GetInteration extends StatefulWidget {
  @override
  _GetInterationState createState() => _GetInterationState();
}

class _GetInterationState extends State<GetInteration> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _getActionButton(
            title: "Thích", urlImage: "assets/icons/button_like.png"),
        _getActionButton(
            title: "Bình luận", urlImage: "assets/icons/button_comment.png"),
        _getActionButton(
            title: "Chia sẻ", urlImage: "assets/icons/button_share.png"),
      ],
    );
  }

  _getActionButton({String title, String urlImage}) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: SizedBox(
            width: 120,
            height: 50,
            child: RaisedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Image(
                        width: 25,
                        height: 25,
                        image: AssetImage(
                          urlImage,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(title,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w600)),
                    ),
                  )
                ],
              ),
              color: Colors.white,
            )),
      ),
    );
  }
}
