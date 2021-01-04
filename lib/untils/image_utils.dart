import 'package:flutter/material.dart';

class ImageUtil {
  static getLocalImage(
      String name, double width, double height, BoxFit boxFit) {
    if (width == null) {
      width = 36.0;
    }
    if (height == null) {
      height = 36.0;
    }

    if (boxFit == null) {
      boxFit = BoxFit.fill;
    }

    return new Image.asset(
      "res/images/" + name,
      width: width,
      height: height,
      fit: boxFit,
    );
  }

  static getNetWorkImage(String url, double width, double height, BoxFit boxFit,
      BuildContext context) {
    if (width == null) {
      width = 36.0;
    }
    if (height == null) {
      height = 36.0;
    }

    if (boxFit == null) {
      boxFit = BoxFit.cover;
    }

//    return FadeInImage.assetNetwork(
//      image: url,
//      placeholder: 'res/images/default-image.png',
//      fit: BoxFit.fill,
//      width: width,
//      height: height,
//    );
    try {
      return FadeInImage(
        image: NetworkImage(url),
        fadeInDuration: Duration(milliseconds: 400),
        fadeInCurve: Curves.bounceIn,
        fadeOutDuration: Duration(milliseconds: 400),
        fadeOutCurve: Curves.easeIn,
        placeholder: AssetImage(
          'res/images/default-image.png',
        ),
        fit: boxFit,
        width: width,
        height: height,
      );
    } catch (e) {
      return Container(
        color: Colors.white,
        padding: EdgeInsets.all(5),
        width: width,
        height: height,
        child: Image.asset(
          'res/images/default-image.png',
          fit: boxFit,
        ),
      );
    }
  }
}
