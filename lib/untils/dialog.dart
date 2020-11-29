// import 'package:flutter/material.dart';
//
//
// class DialogUtils {
//   ///Show alert
//   static void alert(BuildContext context, String message) {
//     alertWithCallback(context, message, null);
//   }
//
//   static void alertWithCallback(
//       BuildContext context, String message, Function callback) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return CustomDialog(
//             imgURL: 'res/icons/icon_oops.png',
//             title: "",
//             description: message,
//             buttonText: "Đồng ý",
//           );
//         });
//   }
//
//   static void confirmWithCallback(BuildContext context, String message,
//       Function callback, String cancelText, String acceptText, String label) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
// //          return AlertDialog(
// //              contentPadding: EdgeInsets.only(left: 5.0, right: 5.0),
// //              backgroundColor: Colors.transparent,
// //              content: Container(
// //                decoration: BoxDecoration(
// //                    color: Theme.of(context).backgroundColor,
// //                    borderRadius: new BorderRadius.all(
// //                      Radius.circular(13.0),
// //                    )),
// //                width: 50.0,
// //                child: Column(
// //                  mainAxisAlignment: MainAxisAlignment.center,
// //                  mainAxisSize: MainAxisSize.min,
// //                  children: <Widget>[
// //                    MyPadding(
// //                      paddingTop: 20.0,
// //                    ),
// //                    Text(
// //                      label,
// //                      style: TextStyle(
// //                          fontSize: 16.0, fontWeight: FontWeight.w700),
// //                    ),
// //                    MyPadding(
// //                      paddingTop: 5.0,
// //                    ),
// //                    Padding(
// //                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
// //                      child: Text(
// //                        message,
// //                        style: TextStyle(
// //                            height: 1.1,
// //                            fontSize: 13.0,
// //                            color: Color.fromRGBO(138, 138, 138, 1)),
// //                        textAlign: TextAlign.center,
// //                      ),
// //                    ),
// //                    MyPadding(
// //                      paddingTop: 22.0,
// //                    ),
// //                    Container(
// //                        decoration: BoxDecoration(
// //                          border: Border(
// //                              top: BorderSide(
// //                                  color: Theme.of(context).disabledColor,
// //                                  width: 0.5)),
// //                        ),
// //                        height: 47,
// //                        child: Row(
// //                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                            children: <Widget>[
// //                              Flexible(
// //                                flex: 1,
// //                                child: FlatButton(
// //                                  child: Center(
// //                                    child: Text(
// //                                      cancelText,
// //                                      style: TextStyle(
// //                                          fontSize: 16,
// //                                          color:
// //                                          Color.fromRGBO(21, 126, 251, 1)),
// //                                    ),
// //                                  ),
// //                                  onPressed: () {
// //                                    Navigator.pop(context);
// //                                  },
// //                                ),
// //                              ),
// //                              Container(
// //                                color: Theme.of(context).disabledColor,
// //                                width: 0.5,
// //                              ),
// //                              Flexible(
// //                                flex: 1,
// //                                child: Center(
// //                                    child: FlatButton(
// //                                      child: Center(
// //                                        child: Text(acceptText,
// //                                            style: TextStyle(
// //                                                fontSize: 16,
// //                                                color: Color.fromRGBO(
// //                                                    21, 126, 251, 1))),
// //                                      ),
// //                                      onPressed: () {
// //                                        Navigator.pop(context);
// //
// //                                        if (callback != null) {
// //                                          callback();
// //                                        }
// //                                      },
// //                                    )),
// //                              ),
// //                            ]))
// //                  ],
// //                ),
// //              ));
//           return Dialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(Consts.padding),
//             ),
//             elevation: 0.0,
//             backgroundColor: Colors.transparent,
//             child: confirmDialogContent(context, message, callback, cancelText, acceptText, label),
//           );
//         });
//   }
//
//   //Show indicator
//   static void indicator(BuildContext context, String message) {
//     var simDialog = new SimpleDialog(
//       title: new Text(message),
//       children: <Widget>[new CircularProgressIndicator()],
//       contentPadding: const EdgeInsets.all(8.0),
//     );
//     showDialog(
//         context: context,
//         barrierDismissible: false,
//         builder: (BuildContext context) {
//           return simDialog;
//         });
//   }
//
//   static Widget basicIndicator(bool show) {
//     return show
//         ? new Container(
//       width: 70.0,
//       height: 70.0,
//       child: new Padding(
//           padding: const EdgeInsets.all(5.0),
//           child: new Center(child: new CircularProgressIndicator())),
//     )
//         : new Container();
//   }
//
//   static void showSnackBar(BuildContext context, String message) {
//     SnackBar snackBar = new SnackBar(content: new Text(message));
//     Scaffold.of(context).showSnackBar(snackBar);
//   }
//
//   static void hideSnackBar(BuildContext context) {
//     Scaffold.of(context).hideCurrentSnackBar();
//   }
//
//   static confirmDialogContent(BuildContext context, String message, Function callback, String cancelText, String acceptText, String label) {
//     return Stack(
//       children: <Widget>[
//         //...bottom card part,
//         Container(
//           //child: (Image(image: AssetImage(imgURL))),
//           padding: EdgeInsets.only(
//             top: Consts.avatarRadius + Consts.padding,
//             bottom: Consts.padding,
//             left: Consts.padding,
//             right: Consts.padding,
//           ),
//           margin: EdgeInsets.only(top: Consts.avatarRadius),
//           decoration: new BoxDecoration(
//             color: Colors.white,
//             shape: BoxShape.rectangle,
//             borderRadius: BorderRadius.circular(Consts.padding),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black26,
//                 blurRadius: 10.0,
//                 offset: const Offset(0.0, 10.0),
//               ),
//             ],
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min, // To make the card compact
//             children: <Widget>[
//               Text(
//                 message,
//                 maxLines: 2,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 16.0,
//                   color: AppColor.textBlack,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               SizedBox(height: 8.0),
//               SizedBox(height: 16.0),
//               DividerWidget(),
//               Container(
//                 height: 50,
//                 alignment: Alignment.bottomCenter,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Expanded(
//                       child: MaterialButton(
//                           height: 50,
//                           onPressed: () {
//                             Navigator.of(context).pop(); // To close the dialog
//                           },
//                           child:Text(
//                             cancelText,
//                             style: TextStyle(
//                                 color: AppColor.blueMain, fontWeight: FontWeight.w500, fontSize: 16),
//                           )
//                       ),
//                     ),
//                     VerticalDivider(),
//                     Expanded(
//                       child: MaterialButton(
//                         height: 50,
//                         onPressed: () {
//                           Navigator.of(context).pop(); // To close the dialog and confirm
//                           if (callback != null) {
//                             callback();
//                           }
//                         },
//                         child:Text(
//                           acceptText,
//                           style: TextStyle(
//                               color: AppColor.blueMain, fontWeight: FontWeight.w500, fontSize: 16),
//                         )
//                       ),
//                     ),
//
//
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Positioned(
//           left: Consts.padding,
//           right: Consts.padding,
//           child: CircleAvatar(
//             backgroundColor: AppColor.transparent,
//             child: (Image(image: AssetImage('res/icons/icon_oops.png'))),
//             radius: Consts.avatarRadius,
//           ),
//         )
//         //...top circlular image part,
//       ],
//     );
//
//   }
// }
