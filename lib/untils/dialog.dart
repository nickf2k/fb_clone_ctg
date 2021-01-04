import 'package:flutter/material.dart';

class DialogUtils {
  ///Show alert
  // static void alert(BuildContext context, String message) {
  //   alertWithCallback(context, message, null);
  // }

  // static void alertWithCallback(
  //     BuildContext context, String message, Function callback) {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return CustomDialog(
  //           imgURL: 'res/icons/icon_oops.png',
  //           title: "",
  //           description: message,
  //           buttonText: "Đồng ý",
  //         );
  //       });
  // }

  //Show indicator
  static void indicator(BuildContext context, String message) {
    var simDialog = new SimpleDialog(
      title: new Text(message),
      children: <Widget>[new CircularProgressIndicator()],
      contentPadding: const EdgeInsets.all(8.0),
    );
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return simDialog;
        });
  }

  static Widget showError( String message, BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              title: Center(
                child: Text(
                  "Có lỗi xảy ra",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              content: Container(
                  height: 40,
                  child: Center(child: Text(message ?? "Có lỗi xảy ra ở đây"))),
            ));
  }

  static Widget basicIndicator(bool show) {
    return show
        ? new Container(
            width: 70.0,
            height: 70.0,
            child: new Padding(
                padding: const EdgeInsets.all(5.0),
                child: new Center(child: new CircularProgressIndicator())),
          )
        : new Container();
  }

  static void showSnackBar(BuildContext context, String message) {
    SnackBar snackBar = new SnackBar(content: new Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  static void hideSnackBar(BuildContext context) {
    Scaffold.of(context).hideCurrentSnackBar();
  }
}
