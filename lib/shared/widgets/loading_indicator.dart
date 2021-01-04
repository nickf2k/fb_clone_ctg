import 'package:fb_clone_ctg/config/app_color.dart';
import 'package:flutter/material.dart';

class LoadingIndicatorWidget extends StatelessWidget {
  const LoadingIndicatorWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 30,
          width: 50,
          child: Center(
            child: CircularProgressIndicator(
              backgroundColor: AppColor.blueMain,
            ),
          )),
    );
  }
}