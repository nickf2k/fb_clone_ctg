import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'config/route.dart';
import 'config/theme.dart';
import 'constant/route_constant.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sign in With Bloc',
        theme: themeConfig(),
        //initialRoute: RouteConstant.SIGN_IN,
        initialRoute: RouteConstant.ADD_FRIENDS,
        routes: routeConfig());

  }
}

