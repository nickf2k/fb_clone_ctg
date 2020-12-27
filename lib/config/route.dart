import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/module/home_page/home_view.dart';
import 'package:fb_clone_ctg/module/post/add_post/add_post_view.dart';
import 'package:fb_clone_ctg/module/post/post_view.dart';
import 'package:fb_clone_ctg/module/profile/profile_view.dart';

// import 'package:fb_clone_ctg/module/profile/profile_view.dart';
import 'package:fb_clone_ctg/module/setting/settingg.dart';
import 'package:fb_clone_ctg/module/sign_in/sign_in_view.dart';
import 'package:fb_clone_ctg/module/sign_up/sign_up_view.dart';
import 'package:flutter/material.dart';
import '../constant/route_constant.dart';
import '../module/notification/notification_view.dart';
import '../module/friend/requested_fr_view.dart';
Map<String, WidgetBuilder> routeConfig() {
  return <String, WidgetBuilder>{
    RouteConstant.SIGN_IN: (context) => SignInPage(),
    RouteConstant.NOTIFICATIONS: (context) => NotificationPage(),
    RouteConstant.HOME: (context) => HomePage(),
    RouteConstant.ADD_POST: (context) => AddPostPage(),
    RouteConstant.SETTING: (context) => SettingPage(),
    //  RouteConstant.VIDEO: (context) => DemoVideoStream1(),
    // RouteConstant.SETTING_INFO: (context) => SettingInfoPage(),
    RouteConstant.PROFILE: (context) => ProfilePage(),
    RouteConstant.SIGN_UP: (context) => SignUpPage(),

    RouteConstant.POST_DETAIL: (context) => PostDetailPage(),
    RouteConstant.REQUESTED_FRIEND: (context) => RequestedPage(),
  };
}
