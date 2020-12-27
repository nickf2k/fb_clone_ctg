import 'package:flutter/material.dart';
class Interact extends StatefulWidget {
  @override
  _InteractState createState() => _InteractState();
}

class _InteractState extends State<Interact> {
  double fontLCS = 15;
  double heightIcon = 20;
  double widthIcon =20;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _getActionButton(title: "Thích",urlImage:"assets/icons/button_like.png" ),

        _getActionButton(title: "Bình luận",urlImage:"assets/icons/button_comment.png" ),
        _getActionButton(title: "Chia sẻ",urlImage:"assets/icons/share.png" ),


      ],
    );
  }
  _getActionButton({String title, String urlImage}){
    return    Expanded(
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
                        width: widthIcon,
                        height:heightIcon,
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
                              fontSize: fontLCS,
                              fontWeight: FontWeight.normal)),
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
