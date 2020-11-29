import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/module/sign_in/sign_in_view.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routeConfig() {
  return <String, WidgetBuilder>{
    RouteConstant.SIGN_IN: (context) => LoginPage(),
  };
}
